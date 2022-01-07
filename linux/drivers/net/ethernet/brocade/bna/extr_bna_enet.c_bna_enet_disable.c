
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_enet {void (* stop_cbfn ) (void*) ;void* stop_cbarg; int flags; TYPE_1__* bna; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_2__ {void* bnad; } ;


 int BNA_ENET_F_ENABLED ;
 int BNA_SOFT_CLEANUP ;
 int ENET_E_STOP ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;
 void stub1 (void*) ;

void
bna_enet_disable(struct bna_enet *enet, enum bna_cleanup_type type,
   void (*cbfn)(void *))
{
 if (type == BNA_SOFT_CLEANUP) {
  (*cbfn)(enet->bna->bnad);
  return;
 }

 enet->stop_cbfn = cbfn;
 enet->stop_cbarg = enet->bna->bnad;

 enet->flags &= ~BNA_ENET_F_ENABLED;

 bfa_fsm_send_event(enet, ENET_E_STOP);
}
