
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int * rx_rings; int * xdp_rings; int * tx_rings; } ;


 int i40e_clean_rx_ring (int ) ;
 int i40e_clean_tx_ring (int ) ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void i40e_queue_pair_clean_rings(struct i40e_vsi *vsi, int queue_pair)
{
 i40e_clean_tx_ring(vsi->tx_rings[queue_pair]);
 if (i40e_enabled_xdp_vsi(vsi)) {



  synchronize_rcu();
  i40e_clean_tx_ring(vsi->xdp_rings[queue_pair]);
 }
 i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
}
