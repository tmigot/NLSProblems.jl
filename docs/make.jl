using Documenter, NLSProblems

makedocs(
  modules = [NLSProblems],
  doctest = true,
  # linkcheck = true,
  strict = true,
  format = Documenter.HTML(
    assets = ["assets/style.css"],
    prettyurls = get(ENV, "CI", nothing) == "true",
  ),
  sitename = "NLSProblems.jl",
  pages = Any["Home" => "index.md", "Tutorial" => "tutorial.md", "Reference" => "reference.md"],
)

deploydocs(repo = "github.com/JuliaSmoothOptimizers/NLSProblems.jl.git", devbranch = "main")
