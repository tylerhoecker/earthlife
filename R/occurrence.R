#' EarthLife API occurrence objects.
#'
#' This class contains the results from calls to the EarthLife Consortium, generated by calls to
#' \code{get_by_taxon} and others.
#'
#' @section Slots:
#'    \describe{
#'      \item{\code{records}:}{Object of class \code{"data.frame"}.}
#'      \item{\code{meta}:}{Object of class \code{"list"} containing metadata about the call, date of record and data source.}
#'    }
#'
#' @name occurrence
#' @rdname occurrence
#' @aliases occurrence-class
#' @exportClass occurrence
#' @author Simon Goring
#' @export

setClass("occurrence", slots = c(records = "data.frame",
                                 meta = "list"))

setGeneric("citation")

#' @export
setMethod("citation", signature(package = "occurrence",
                                lib.loc = "missing", auto = "missing"), citation.occurrence)
