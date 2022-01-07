
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int dummy; } ;


 int RX_E_RXF_STARTED ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;

__attribute__((used)) static void
bna_rx_cb_rxf_started(struct bna_rx *rx)
{
 bfa_fsm_send_event(rx, RX_E_RXF_STARTED);
}
