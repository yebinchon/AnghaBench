
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx_mod {int * bna; } ;



void
bna_rx_mod_uninit(struct bna_rx_mod *rx_mod)
{
 rx_mod->bna = ((void*)0);
}
