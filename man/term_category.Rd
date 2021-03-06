% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/term-type.R
\name{term_category}
\alias{term_category}
\title{Determine the general category of terms}
\usage{
term_category(x)
}
\arguments{
\item{x}{a vector of one or more term IRIs, or a list of such IRIs or term
objects (such as phenotype objects)}
}
\value{
A character vector with the term categories ("entity", "quality",
"phenotype", or "taxon") of the terms in the input list.
}
\description{
Terms in the Phenoscape KB fall into different general categories: entity,
quality, phenotype (which typically are entity-quality compositions), and
taxon. The category is sometimes needed to plug a term IRI into the right
parameter for a function or API call.
}
\details{
The implementation will first try infer the category from the object type
and the ontology for terms of certain OBO ontologies. Where that fails
it will rely subsumption by specific upper ontology terms, specifically
the BFO terms "independent continuant" (for entity terms) and "quality"
(for quality terms).
}
\examples{
term_category(c("http://purl.obolibrary.org/obo/UBERON_0011618",
                "http://purl.obolibrary.org/obo/PATO_0002279",
                "http://purl.obolibrary.org/obo/VTO_0071642",
                "http://purl.obolibrary.org/obo/MP_0030825"))
phens <- get_phenotypes("basihyal bone")
term_category(phens$id[1:3])
}
