## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to
        # set the value of the matrix
        # get the value of the matrix
        # set the value of the inverse matrix
        # get the value of the inverse matrix
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) m <<- inverse
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## funtion cacheSolve()

        # get the inverse from cache by getinv function
        i <- x$getinv()

        # if inverse is calculated
        if (!is.null(i)) {
                # then get from the cache
                message("getting cached inverse")
                return(i)
        }
        # else, get the inverse
        mat.data <- x$get()
        i <- solve(mat.data, ...)

        # set the inverse value in the cache
        x$setinv(i)
        return(i)

}
