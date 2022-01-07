
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {TYPE_1__* bna; } ;
struct TYPE_2__ {int bnad; int stats_mod; int enet; } ;


 int bna_enet_start (int *) ;
 int bna_stats_mod_start (int *) ;
 int bnad_cb_ioceth_ready (int ) ;

__attribute__((used)) static void
bna_ioceth_sm_ready_entry(struct bna_ioceth *ioceth)
{
 bna_enet_start(&ioceth->bna->enet);
 bna_stats_mod_start(&ioceth->bna->stats_mod);
 bnad_cb_ioceth_ready(ioceth->bna->bnad);
}
