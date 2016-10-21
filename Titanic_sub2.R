getwd()
setwd("D:\\")
getwd()
setwd("D:\\ALGORITHMICA_ Notes_Files\\R practise sessions1\\Kaggle Competitions\\Titanic_Competition_Kaggle")
getwd()
#reading test data

titanic_test = read.csv("test.csv")
dim(titanic_test) #Dimensions
str(titanic_test) #Structure of given test dataset
titanic_test
head(titanic_test)
tail(titanic_test)
titanic_test$Survived = 0

result = titanic_test[,c("PassengerId","Survived")]
write.csv(result,"submission.csv",row.names = F)
# Through this code, we are trying to make a generalised decision, that none of the passengers are survived.
# This is just an assumption  & it is not supported by any math proof.
################################################################
#Attempt 2

?set.seed # seed -> a single value, interpreted as an integer, or NULL


# After vague assumption of none of the passenger is survived.
# Lets move further, by prediction random method about the survival of passenger
dim(titanic_test)
str(titanic_test)
set.seed(100)
?sample()

#fixing column of survived
titanic_test$Survived = sample(c(0,1), nrow(titanic_test), replace = T)

result = titanic_test[,c("PassengerId","Survived")]
write.csv(result,"submission.csv",row.names = F)
#######################################################################
