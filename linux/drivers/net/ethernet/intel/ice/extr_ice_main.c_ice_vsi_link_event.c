
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {scalar_t__ type; int netdev; int state; } ;


 scalar_t__ ICE_VSI_PF ;
 int __ICE_DOWN ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_stop_all_queues (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void ice_vsi_link_event(struct ice_vsi *vsi, bool link_up)
{
 if (!vsi)
  return;

 if (test_bit(__ICE_DOWN, vsi->state) || !vsi->netdev)
  return;

 if (vsi->type == ICE_VSI_PF) {
  if (link_up == netif_carrier_ok(vsi->netdev))
   return;

  if (link_up) {
   netif_carrier_on(vsi->netdev);
   netif_tx_wake_all_queues(vsi->netdev);
  } else {
   netif_carrier_off(vsi->netdev);
   netif_tx_stop_all_queues(vsi->netdev);
  }
 }
}
