
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int dummy; } ;


 int RX_E_CLEANUP_DONE ;
 int bfa_fsm_send_event (struct bna_rx*,int ) ;

void
bna_rx_cleanup_complete(struct bna_rx *rx)
{
 bfa_fsm_send_event(rx, RX_E_CLEANUP_DONE);
}
