
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int rx_started_count; int flags; } ;


 int BNA_ETHPORT_F_RX_STARTED ;
 int ETHPORT_E_UP ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;
 scalar_t__ ethport_can_be_up (struct bna_ethport*) ;

void
bna_ethport_cb_rx_started(struct bna_ethport *ethport)
{
 ethport->rx_started_count++;

 if (ethport->rx_started_count == 1) {
  ethport->flags |= BNA_ETHPORT_F_RX_STARTED;

  if (ethport_can_be_up(ethport))
   bfa_fsm_send_event(ethport, ETHPORT_E_UP);
 }
}
