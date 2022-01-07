
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int alloc_queue_pairs; int ** xdp_rings; int ** rx_rings; int ** tx_rings; } ;


 int kfree_rcu (int *,int ) ;
 int rcu ;

__attribute__((used)) static void i40e_vsi_clear_rings(struct i40e_vsi *vsi)
{
 int i;

 if (vsi->tx_rings && vsi->tx_rings[0]) {
  for (i = 0; i < vsi->alloc_queue_pairs; i++) {
   kfree_rcu(vsi->tx_rings[i], rcu);
   vsi->tx_rings[i] = ((void*)0);
   vsi->rx_rings[i] = ((void*)0);
   if (vsi->xdp_rings)
    vsi->xdp_rings[i] = ((void*)0);
  }
 }
}
