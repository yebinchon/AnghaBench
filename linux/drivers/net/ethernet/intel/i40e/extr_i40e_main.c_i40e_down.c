
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {scalar_t__ type; int num_queue_pairs; int * rx_rings; int * xdp_rings; int * tx_rings; TYPE_1__* back; scalar_t__ netdev; } ;
struct TYPE_2__ {int flags; } ;


 int I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED ;
 scalar_t__ I40E_VSI_MAIN ;
 int i40e_clean_rx_ring (int ) ;
 int i40e_clean_tx_ring (int ) ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_force_link_state (TYPE_1__*,int) ;
 int i40e_napi_disable_all (struct i40e_vsi*) ;
 int i40e_vsi_disable_irq (struct i40e_vsi*) ;
 int i40e_vsi_stop_rings (struct i40e_vsi*) ;
 int netif_carrier_off (scalar_t__) ;
 int netif_tx_disable (scalar_t__) ;
 int synchronize_rcu () ;

void i40e_down(struct i40e_vsi *vsi)
{
 int i;




 if (vsi->netdev) {
  netif_carrier_off(vsi->netdev);
  netif_tx_disable(vsi->netdev);
 }
 i40e_vsi_disable_irq(vsi);
 i40e_vsi_stop_rings(vsi);
 if (vsi->type == I40E_VSI_MAIN &&
     vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED)
  i40e_force_link_state(vsi->back, 0);
 i40e_napi_disable_all(vsi);

 for (i = 0; i < vsi->num_queue_pairs; i++) {
  i40e_clean_tx_ring(vsi->tx_rings[i]);
  if (i40e_enabled_xdp_vsi(vsi)) {



   synchronize_rcu();
   i40e_clean_tx_ring(vsi->xdp_rings[i]);
  }
  i40e_clean_rx_ring(vsi->rx_rings[i]);
 }

}
