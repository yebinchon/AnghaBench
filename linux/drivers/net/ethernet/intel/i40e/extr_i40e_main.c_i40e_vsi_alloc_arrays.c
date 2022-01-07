
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int alloc_queue_pairs; int num_q_vectors; struct i40e_ring** tx_rings; void* q_vectors; struct i40e_ring** rx_rings; struct i40e_ring** xdp_rings; } ;
struct i40e_ring {int dummy; } ;
struct i40e_q_vector {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int kfree (struct i40e_ring**) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int i40e_vsi_alloc_arrays(struct i40e_vsi *vsi, bool alloc_qvectors)
{
 struct i40e_ring **next_rings;
 int size;
 int ret = 0;


 size = sizeof(struct i40e_ring *) * vsi->alloc_queue_pairs *
        (i40e_enabled_xdp_vsi(vsi) ? 3 : 2);
 vsi->tx_rings = kzalloc(size, GFP_KERNEL);
 if (!vsi->tx_rings)
  return -ENOMEM;
 next_rings = vsi->tx_rings + vsi->alloc_queue_pairs;
 if (i40e_enabled_xdp_vsi(vsi)) {
  vsi->xdp_rings = next_rings;
  next_rings += vsi->alloc_queue_pairs;
 }
 vsi->rx_rings = next_rings;

 if (alloc_qvectors) {

  size = sizeof(struct i40e_q_vector *) * vsi->num_q_vectors;
  vsi->q_vectors = kzalloc(size, GFP_KERNEL);
  if (!vsi->q_vectors) {
   ret = -ENOMEM;
   goto err_vectors;
  }
 }
 return ret;

err_vectors:
 kfree(vsi->tx_rings);
 return ret;
}
