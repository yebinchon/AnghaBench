
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_tx_mod {int (* stop_cbfn ) (int *) ;TYPE_1__* bna; } ;
struct TYPE_2__ {int enet; } ;


 int stub1 (int *) ;

__attribute__((used)) static void
bna_tx_mod_cb_tx_stopped_all(void *arg)
{
 struct bna_tx_mod *tx_mod = (struct bna_tx_mod *)arg;

 if (tx_mod->stop_cbfn)
  tx_mod->stop_cbfn(&tx_mod->bna->enet);
 tx_mod->stop_cbfn = ((void*)0);
}
