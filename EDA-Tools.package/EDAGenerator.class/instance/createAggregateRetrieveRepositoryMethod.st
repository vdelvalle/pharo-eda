code generation - aggregate
createAggregateRetrieveRepositoryMethod
	^ self
		compileIfDoesNotExist: self generateAggregateRetrieveRepositoryMethodName
		sourceCode: self generateAggregateRetrieveRepositoryMethod
		inClass: (self class environment at: (self appName , self aggregate capitalized) asSymbol)
		classifiedAs: self protocol