# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /testing
WORKDIR /testing

# Copy the current directory contents into the container at /testing
COPY . /testing

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 4444 available to the world outside this container
EXPOSE 4444 

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "testing.py"]
