<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <link type="text/css" rel="stylesheet" href="style.css" />
    </head>
    <body>
    
    <img src="Berger-Levrault_logo.jpg" alt="Smiley face" height="60" width="120"  margin-left="140"  margin-right="140px">
    <img src="logo_DISP.png" alt="Smiley face" height="60" width="140" align="right">
      <br />
      <br />
      <br />
     <h3 align="center">Ce service vous permet de mettre les citoyens en contact avec la mairie afin de pouvoir résoudre les incidents </Br> 
     qui sont liés à différentes catégories de problème (E.g : la propreté, l'éclairage, transport)</h3>
      <br />
      <br />
      <br />
    
        <form method="post" action="signalement">
            <fieldset>
                <legend>Nouveau signalement</legend>
                <p>Vous pouvez signaler un incident par ce formulaire.</p>

                <label for="importance">Importance <span class="requis">*</span></label>
                <input type="text" id="importance" name="importance" value="" size="20" maxlength="60" />
                <span class="erreur">${erreurs['importance']}</span>
                <br />
                
         

                <label for="objet">Objet <span class="requis">*</span></label>
                <input type="text" id="objet" name="objet" value="" size="20" maxlength="20" />
                 <span class="erreur">${erreurs['objet']}</span>
                <br />

                <label for="description">Description <span class="requis">*</span></label>
                <input type="text" id="description" name="description" value="" size="20" maxlength="20" />
                <span class="erreur">${erreurs['description']}</span>
                
                <br />

                <label for="commentaire">Commentaire</label>
                <input type="text" id="commentaire" name="commentaire" value="" size="20" maxlength="20" />
                <span class="erreur">${erreurs['commentaire']}</span>
                <br />
                
                <label for="adresse">Adresse de l'incident<span class="requis">*</span></label>
                <input type="text" id="adresse" name="adresse" value="" size="20" maxlength="20" />
                <span class="erreur">${erreurs['adresse']}</span>
                
                <br />

                <input type="submit" value="Envoyer" class="sansLabel" />
                <br />
                <p class="${empty erreurs ? 'succes' : 'erreur'}">${resultat}</p>
            </fieldset>
        </form>
    </body>
</html>