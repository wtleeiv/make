CC = gcc
CFLAGS = -std=c99 -pedantic -Wall -Wextra

NAME = hellomake
# rebuild if headers change
DEPS = hellomake.h
OBJ = hellomake.o hellofunc.o

default: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CFLAGS)

# $@ = left of colon
# $< = first thing right of colon
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm *.o
