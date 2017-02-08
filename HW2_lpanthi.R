# This program is written to predict the graduate debt by analyzing each variables in the given set of data.

# Lets first set the working directory to the folder you want to use for this project. I have used my local drive.
setwd("C:/Users/lpanthi/Google Drive/Spring 17/MIS64037/HW2")
getwd() # confirms the drive you set

# Now, download the data direct from the website and save it to the local drive.
download.file("https://ed-public-download.apps.cloud.gov/downloads/Most-Recent-Cohorts-Scorecard-Elements.csv",destfile = "HW2.csv",method = "auto")
list.files(".")

# Read this file using the read.csv and save it as a collegedata object. Change it to a tibble data frame.
CollegeScorecard <- read.csv("HW2.csv",na.strings = c("NULL","PrivacySuppressed"))
library(dplyr) #loading the dplyr library just in case
library(tibble) #load the library required for tbl_df function
CS <- tbl_df(CollegeScorecard) #save the data frame as a new CS object.
dim(CS) #check the dimension of the data frame.
CS_1 <- CS[sapply(CS, is.numeric)] #create a new dataframe CS_1 with only numeric values from CS
attach(CS_1)
cor(CS_1)