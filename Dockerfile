# Use official base image of Java Runtime
FROM openjdk:8-jdk-alpine

# Make port 8080 available to the world outside container
EXPOSE 8081

# Set application's JAR file
ARG JAR_FILE=target/bankaccount-0.0.1-SNAPSHOT.jar

# Add the application's JAR file to the container
ADD ${JAR_FILE} app.jar

# Run the JAR file
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]