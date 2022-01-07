
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx_mod {int * bna; } ;



void
bna_tx_mod_uninit(struct bna_tx_mod *tx_mod)
{
 tx_mod->bna = ((void*)0);
}
