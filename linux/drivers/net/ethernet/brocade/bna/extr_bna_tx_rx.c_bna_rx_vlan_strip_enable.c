
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {scalar_t__ vlan_strip_status; int vlan_strip_pending; } ;
struct bna_rx {struct bna_rxf rxf; } ;


 scalar_t__ BNA_STATUS_T_DISABLED ;
 scalar_t__ BNA_STATUS_T_ENABLED ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;

void
bna_rx_vlan_strip_enable(struct bna_rx *rx)
{
 struct bna_rxf *rxf = &rx->rxf;

 if (rxf->vlan_strip_status == BNA_STATUS_T_DISABLED) {
  rxf->vlan_strip_status = BNA_STATUS_T_ENABLED;
  rxf->vlan_strip_pending = 1;
  bfa_fsm_send_event(rxf, RXF_E_CONFIG);
 }
}
