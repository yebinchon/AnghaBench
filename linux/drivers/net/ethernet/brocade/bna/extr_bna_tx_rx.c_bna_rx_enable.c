
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {scalar_t__ fsm; int rx_flags; } ;
typedef scalar_t__ bfa_sm_t ;


 int BNA_RX_F_ENABLED ;
 int BNA_RX_F_ENET_STARTED ;
 int RX_E_START ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;
 scalar_t__ bna_rx_sm_stopped ;

void
bna_rx_enable(struct bna_rx *rx)
{
 if (rx->fsm != (bfa_sm_t)bna_rx_sm_stopped)
  return;

 rx->rx_flags |= BNA_RX_F_ENABLED;
 if (rx->rx_flags & BNA_RX_F_ENET_STARTED)
  bfa_fsm_send_event(rx, RX_E_START);
}
