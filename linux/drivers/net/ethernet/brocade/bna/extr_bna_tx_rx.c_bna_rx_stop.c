
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx {scalar_t__ fsm; TYPE_1__* bna; int * stop_cbarg; int (* stop_cbfn ) (int *,struct bna_rx*) ;int rx_flags; } ;
typedef scalar_t__ bfa_fsm_t ;
struct TYPE_2__ {int rx_mod; } ;


 int BNA_RX_F_ENET_STARTED ;
 int RX_E_STOP ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;
 int bna_rx_mod_cb_rx_stopped (int *,struct bna_rx*) ;
 scalar_t__ bna_rx_sm_stopped ;

__attribute__((used)) static void
bna_rx_stop(struct bna_rx *rx)
{
 rx->rx_flags &= ~BNA_RX_F_ENET_STARTED;
 if (rx->fsm == (bfa_fsm_t) bna_rx_sm_stopped)
  bna_rx_mod_cb_rx_stopped(&rx->bna->rx_mod, rx);
 else {
  rx->stop_cbfn = bna_rx_mod_cb_rx_stopped;
  rx->stop_cbarg = &rx->bna->rx_mod;
  bfa_fsm_send_event(rx, RX_E_STOP);
 }
}
