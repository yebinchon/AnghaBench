
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int alloc_txq; int alloc_rxq; int ** rx_rings; int ** tx_rings; } ;


 int kfree_rcu (int *,int ) ;
 int rcu ;

__attribute__((used)) static void ice_vsi_clear_rings(struct ice_vsi *vsi)
{
 int i;

 if (vsi->tx_rings) {
  for (i = 0; i < vsi->alloc_txq; i++) {
   if (vsi->tx_rings[i]) {
    kfree_rcu(vsi->tx_rings[i], rcu);
    vsi->tx_rings[i] = ((void*)0);
   }
  }
 }
 if (vsi->rx_rings) {
  for (i = 0; i < vsi->alloc_rxq; i++) {
   if (vsi->rx_rings[i]) {
    kfree_rcu(vsi->rx_rings[i], rcu);
    vsi->rx_rings[i] = ((void*)0);
   }
  }
 }
}
