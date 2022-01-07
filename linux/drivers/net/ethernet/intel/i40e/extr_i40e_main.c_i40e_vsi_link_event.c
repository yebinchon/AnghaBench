
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int type; int netdev; int netdev_registered; int state; } ;
 int __I40E_VSI_DOWN ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_stop_all_queues (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void i40e_vsi_link_event(struct i40e_vsi *vsi, bool link_up)
{
 if (!vsi || test_bit(__I40E_VSI_DOWN, vsi->state))
  return;

 switch (vsi->type) {
 case 131:
  if (!vsi->netdev || !vsi->netdev_registered)
   break;

  if (link_up) {
   netif_carrier_on(vsi->netdev);
   netif_tx_wake_all_queues(vsi->netdev);
  } else {
   netif_carrier_off(vsi->netdev);
   netif_tx_stop_all_queues(vsi->netdev);
  }
  break;

 case 129:
 case 128:
 case 133:
 case 132:
 case 130:
 default:

  break;
 }
}
