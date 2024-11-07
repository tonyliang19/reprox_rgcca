rgcca_input <- readRDS("raw_data.rds")

cv_out <- rgcca_cv(
  blocks = rgcca_input, response = length(rgcca_input),
  par_type = "sparsity",
  prediction_model = "lda",
  validation = "kfold",
  k = 5, n_run = 1, metric = "Balanced_Accuracy")
# Then fit rgcca on the cv_out
fit <- rgcca(cv_out)
stab <- rgcca_stability(fit)

