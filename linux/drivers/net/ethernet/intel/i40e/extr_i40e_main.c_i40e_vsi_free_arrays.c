
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int * xdp_rings; int * rx_rings; int * tx_rings; int * q_vectors; } ;


 int kfree (int *) ;

__attribute__((used)) static void i40e_vsi_free_arrays(struct i40e_vsi *vsi, bool free_qvectors)
{

 if (free_qvectors) {
  kfree(vsi->q_vectors);
  vsi->q_vectors = ((void*)0);
 }
 kfree(vsi->tx_rings);
 vsi->tx_rings = ((void*)0);
 vsi->rx_rings = ((void*)0);
 vsi->xdp_rings = ((void*)0);
}
