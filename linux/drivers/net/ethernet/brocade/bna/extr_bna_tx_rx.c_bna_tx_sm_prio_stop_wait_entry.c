
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_tx {TYPE_1__* bna; int (* tx_stall_cbfn ) (int ,struct bna_tx*) ;} ;
struct TYPE_2__ {int bnad; } ;


 int bna_tx_enet_stop (struct bna_tx*) ;
 int stub1 (int ,struct bna_tx*) ;

__attribute__((used)) static void
bna_tx_sm_prio_stop_wait_entry(struct bna_tx *tx)
{
 tx->tx_stall_cbfn(tx->bna->bnad, tx);
 bna_tx_enet_stop(tx);
}
