# Compiler
JAVAC = javac

# Java Compiler Flags
JFLAGS = -g

# Java run command
JAVA = java

# Main class
MAIN = Main

# Source files
SOURCES = Color.java Main.java

# Class files generated from SOURCES
CLASSES = $(SOURCES:.java=.class)

# Default target
all: run

# Rule to run the program
run: $(CLASSES)
	$(JAVA) $(MAIN)

# Rule to convert .java to .class, includes dependency on all .java files
%.class: %.java
	$(JAVAC) $(JFLAGS) $<

# Clean target to remove class files
clean:
	rm -f *.class
