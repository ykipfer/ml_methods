#####################################################
#####################################################
# 1. Exploratory Data Analysis
#####################################################
#####################################################

# Load data
data <- read.csv("training.csv")

# take a look at the variables and data
library(dplyr)
glimpse(data)

# We have both numerical and categorical variables in the data

####### Variables That Need More Info###############
# month
# msregion
# quarter_general
# quarter_specific
# year
# anteil_efh
#############################


# show summary statistics
summary(data)

# some data that wont be of use in prediction because all values the same: e.g. shower, 

# count NA per columns
sapply(data, function(x) sum(is.na(x)))


####### TO DO ###############
# Handle Missing observations

  # shower: set all to 1
  # NAs = 0 for vars:
            # balcony
            # dishwasher
            # dryer
            # elevator
  
# recode dates (if necessary)
#############################

# correlation plots for numeric data
nums <- unlist(lapply(data, is.numeric))
df <- data[,nums]

# create correlation matrix
res <- cor(df)
col<- colorRampPalette(c("blue", "white", "red"))(20)
heatmap(x = res, col = col, symm = TRUE)

#####################################################
#####################################################
# 2. Data Processing
#####################################################
#####################################################


####### TO DO ################
# Pre-process data (robust scale, ouliers, distribution transformation)

##############################


#####################################################
#####################################################
## Linear Models
#####################################################
#####################################################


#####################################################
#####################################################
## Non-Linear Models
#####################################################
#####################################################
