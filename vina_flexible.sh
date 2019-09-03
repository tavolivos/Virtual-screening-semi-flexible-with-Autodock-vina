#!/bin/bash
#This script runs autodock-vina with semi-flexible receptor
#Writen by:     Gustavo E. Olivos Ramirez
#               gustavo.olivos@upch.pe
#To run this script you must have flexible and rigid receptor in PDBQT, ligand in PDBQT and config.txt (this include boxsize and coordenates).
#Prepare flexible and rigid receptor using AutodockTools (watch this video https://www.youtube.com/watch?v=YTQIuUZRNbA&t=5s)
echo "************************************************"
echo "*           Autodock vina Flexible             *"
echo "*        Multiple-analysis (bash-script)       *"
echo "*                                              *"
echo "*  Writen by:     Gustavo E. Olivos Ramirez    *"
echo "*                 gustavo.olivos@upch.pe       *"
echo "************************************************"
for file in ligando_*.pdbqt; do
    vina --receptor receptor_rigid.pdbqt --flex receptor_flexible.pdbqt --ligand $file --config config.txt --out result_${file%.pdbqt}.pdbqt;
done
mkdir Results && mv result_* Results/


