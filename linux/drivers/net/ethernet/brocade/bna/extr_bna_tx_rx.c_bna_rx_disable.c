
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx {void (* stop_cbfn ) (void*,struct bna_rx*) ;void* stop_cbarg; int rx_flags; TYPE_1__* bna; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_2__ {void* bnad; } ;


 int BNA_RX_F_ENABLED ;
 int BNA_SOFT_CLEANUP ;
 int RX_E_STOP ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;
 void stub1 (void*,struct bna_rx*) ;

void
bna_rx_disable(struct bna_rx *rx, enum bna_cleanup_type type,
  void (*cbfn)(void *, struct bna_rx *))
{
 if (type == BNA_SOFT_CLEANUP) {

  (*cbfn)(rx->bna->bnad, rx);
 } else {
  rx->stop_cbfn = cbfn;
  rx->stop_cbarg = rx->bna->bnad;

  rx->rx_flags &= ~BNA_RX_F_ENABLED;

  bfa_fsm_send_event(rx, RX_E_STOP);
 }
}
