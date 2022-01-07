
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_mcam_mod {int * bna; } ;



__attribute__((used)) static void
bna_mcam_mod_uninit(struct bna_mcam_mod *mcam_mod)
{
 mcam_mod->bna = ((void*)0);
}
