#import "@preview/basic-resume:0.2.8": *

// Informations personnelles / Personal Information
#let name = "Yann Sadowski"
#let location = "Pau, France"
#let email = "sadowski.yann@gmail.com"
#let github = "github.com/yannsadowski" // À adapter selon votre profil GitHub
#let linkedin = "linkedin.com/in/yann-sadowski/" // À adapter selon votre profil LinkedIn
#let personal-site = "/medium.com/@sadowski.yann" // À compléter si vous avez un site personnel

#show: resume.with(
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
)

// En-tête personnalisé avec QR codes intégrés
#grid(
  columns: (1fr, auto),
  column-gutter: 1cm,
  align: (left, center + horizon),
  
  // Colonne gauche : Informations principales
  [
    #text(size: 24pt, weight: "bold", fill: rgb("#26428b"))[#name] \
    #text(size: 11pt)[#location] \
    #link("mailto:" + email)[#email] \
    #link("https://" + github)[#github] \
    #link("https://" + personal-site)[#personal-site] \
    #link("https://" + linkedin)[#linkedin]
  ],
  
  // Colonne droite : QR codes avec styling amélioré
  [
    #stack(
      dir: ltr,
      spacing: 0.4cm,
      
      // QR GitHub avec encadrement subtil
      rect(
        stroke: 0.5pt + rgb("#e0e0e0"),
        radius: 2pt,
        inset: 3pt,
        [
          #image("QR_github.png", width: 1.8cm)
          #align(center)[#text(size: 6pt, fill: rgb("#666666"))[GitHub]]
        ]
      ),
      
      // QR LinkedIn avec encadrement subtil
      rect(
        stroke: 0.5pt + rgb("#e0e0e0"),
        radius: 2pt,
        inset: 3pt,
        [
          #image("QR_linkedin.jpg", width: 1.8cm)
          #align(center)[#text(size: 6pt, fill: rgb("#666666"))[LinkedIn]]
        ]
      ),
      
      // QR LinkedIn avec encadrement subtil
      rect(
        stroke: 0.5pt + rgb("#e0e0e0"),
        radius: 2pt,
        inset: 3pt,
        [
          #image("QR_medium.png", width: 1.8cm)
          #align(center)[#text(size: 6pt, fill: rgb("#666666"))[Medium]]
        ]
      )
    )
  ]
)

#v(0.5cm) // Espacement avant le contenu principal

== Profil 

Passionné en Intelligence Artificielle spécialisé en séries temporelles et apprentissage profond. Expérience en développement de systèmes ML de bout en bout, de la recherche fondamentale aux applications industrielles. Auteur de publications scientifiques et passionné par l'innovation technologique.


== Formation

#edu(
  institution: "CESI",
  location: "Pau, France",
  dates: dates-helper(start-date: "2022", end-date: "2025"),
  degree: "Diplôme d'ingénieur en alternance, Informatique, Option Data Science",
)

#edu(
  institution: "Université de Pau et des Pays de l'Adour",
  location: "Pau, France", 
  dates: dates-helper(start-date: "2020", end-date: "2022"),
  degree: "DUT Informatique",
)

#edu(
  institution: "Lycée",
  location: "Aire-sur-l'Adour, France",
  dates: "2019",
  degree: "Baccalauréat Scientifique (option Sciences de l'ingénieur), spécialité mathématique",
)

== Expérience Professionnelle

#work(
  title: "Consultant technico-fonctionnel en informatique",
  location: "Assat,France",
  company: "SAFRAN HE",
  dates: dates-helper(start-date: "Oct 2022", end-date: "Sep 2025"),
)
- Développement d'un système automatisé de suivi des licences logicielles
- Conception et déploiement de solutions d'automatisation logicielle
- Implémentation d'un système de reconnaissance d'écriture manuscrite utilisant des VLM, atteignant 93% de précision
- Collaboration avec équipes pluridisciplinaires (5+ personnes) pour intégration de solutions IA dans l'écosystème existant

#work(
  title: "Stage international en recherche IA",
  location: "Split, Croatia",
  company: "FESB (Faculty of Electrical Engineering, Mechanical Engineering and Naval Architecture)",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Oct 2024"),
)
- Recherche appliquée sur la prévision des événements d'apnée du sommeil via machine learning avancé
- Développement d'un pipeline de données pour traitement de signaux physiologiques temporels (ECG, SpO2, etc.)
- Collaboration internationale avec équipe de chercheurs sur une publication scientifique (Applied Sciences)


#work(
  title: "Stage d'introduction à la recherche",
  location: "Anglet, France",
  company: "OpenCEMS",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Jul 2024"),
)
- Conduite d'une revue systématique de littérature scientifique selon méthodologie PRISMA
- Première immersion dans l'environnement de recherche académique et méthodologies scientifiques
- Développement de compétences en analyse critique et synthèse de littérature technique
- Formation aux outils de gestion bibliographique (Zotero) et rédaction scientifique (LaTeX, Typst)

#pagebreak()

== Publications et Articles 

=== Articles de revue à comité de lecture

#generic-one-by-two(
  left: "Zovko, K.; *Sadowski, Y.*; Perković, T.; Šolić, P.; Pavlinac Dodig, I.; Pecotić, R.; Đogaš, Z.",
  right: "2025"
)
Advanced Data Framework for Sleep Medicine Applications: Machine Learning-Based Detection of Sleep Apnea Events. 
*Applied Sciences*, **15**(1), 376. (Impact Factor: 2.5)
#link("https://doi.org/10.3390/app15010376")[https://doi.org/10.3390/app15010376]

=== Articles techniques

#generic-one-by-two(
  left: "*Sadowski, Y.* (2024)",
  right: "Medium"
)
Learning to classify audio with an LSTM. Technical deep-dive into LSTM architectures for audio classification.
#link("https://medium.com/@sadowski.yann/learning-to-classify-audio-with-an-lstm-6c2366f66c99")[Medium Publication]

== Projets de Recherche 

#project(
  name: "Prédiction d'apnées du sommeil par Deep Learning",
  role: "Chercheur principal", 
  dates: dates-helper(start-date: "Aug 2024", end-date: "Oct 2024"),
)
- Développement d'un modèle LSTM pour la prédiction d'événements d'apnée du sommeil à partir de données physiologiques
- Traitement de séries temporelles multi-variées avec preprocessing avancé et feature engineering
- Publication dans Applied Sciences (Q2, Impact Factor: 2.5)

#project(
  name: "Classification audio par réseaux récurrents",
  role: "Ingénieur Recherche ML",
  dates: "2024",
)
- Implémentation d'un classificateur audio basé sur des LSTM avec architecture personnalisée
- Pipeline complet : extraction de features mel-spectrogram, data augmentation, et optimisation hyperparamètres
- Précision de 57% sur dataset de test avec 10 classes audio distinctes sur micro samples
- Précision de 85% en regroupant les prédictions par samples (57 micro samples par sample)
- Article technique publié sur Medium

== Compétences Techniques

=== Machine Learning & Deep Learning
- *Algorithmes supervisés*: Classification, régression, ensemble methods (Random Forest, XGBoost)
- *Deep Learning*: LSTM, CNN, Transformers, autoencoders, Diffusion models
- *Frameworks*: PyTorch (avancé), TensorFlow/Keras, scikit-learn, Hugging Face

=== Optimisation & Expérimentation MLOps
- *Hyperparameter tuning*: Optuna, WandB Sweeps, GridSearch, Bayesian optimization
- *Experiment tracking*: Weights & Biases, MLflow, Hydra pour configuration management

=== Développement & Outils
- *Langages*: Python, SQL, Bash scripting
- *Data Science*: pandas, numpy, scipy, matplotlib, seaborn, plotly
- *Infrastructure*: Jupyter, Git/GitHub, Docker, Linux/Unix

== Langues

- *Français*: Langue maternelle / Native
- *Anglais*: C1 (TOEIC 955)

== Centres d'Intérêt 

- *Sports*: Volleyball
- *Voyages*: Portugal, Espagne, Angleterre, Croatie 
- *Loisirs*: Lecture, musique, intelligence artificielle