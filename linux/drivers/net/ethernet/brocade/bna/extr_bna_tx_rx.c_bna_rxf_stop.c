
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int rx; int stop_cbarg; int stop_cbfn; } ;


 int RXF_E_STOP ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 int bna_rx_cb_rxf_stopped ;

__attribute__((used)) static void
bna_rxf_stop(struct bna_rxf *rxf)
{
 rxf->stop_cbfn = bna_rx_cb_rxf_stopped;
 rxf->stop_cbarg = rxf->rx;
 bfa_fsm_send_event(rxf, RXF_E_STOP);
}
