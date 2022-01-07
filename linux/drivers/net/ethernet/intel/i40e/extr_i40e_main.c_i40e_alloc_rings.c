
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int alloc_queue_pairs; struct i40e_ring** rx_rings; int num_rx_desc; int * netdev; scalar_t__ base_queue; int * xdp_rings; struct i40e_pf* back; int num_tx_desc; int * tx_rings; } ;
struct i40e_ring {int queue_index; int ring_active; int itr_setting; scalar_t__ dcb_tc; scalar_t__ size; int count; int * dev; int * netdev; struct i40e_vsi* vsi; scalar_t__ reg_idx; void* flags; } ;
struct i40e_pf {int hw_features; int rx_itr_default; TYPE_1__* pdev; int tx_itr_default; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I40E_HW_WB_ON_ITR_CAPABLE ;
 void* I40E_TXR_FLAGS_WB_ON_ITR ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_vsi_clear_rings (struct i40e_vsi*) ;
 struct i40e_ring* kcalloc (int,int,int ) ;
 int set_ring_xdp (struct i40e_ring*) ;

__attribute__((used)) static int i40e_alloc_rings(struct i40e_vsi *vsi)
{
 int i, qpv = i40e_enabled_xdp_vsi(vsi) ? 3 : 2;
 struct i40e_pf *pf = vsi->back;
 struct i40e_ring *ring;


 for (i = 0; i < vsi->alloc_queue_pairs; i++) {

  ring = kcalloc(qpv, sizeof(struct i40e_ring), GFP_KERNEL);
  if (!ring)
   goto err_out;

  ring->queue_index = i;
  ring->reg_idx = vsi->base_queue + i;
  ring->ring_active = 0;
  ring->vsi = vsi;
  ring->netdev = vsi->netdev;
  ring->dev = &pf->pdev->dev;
  ring->count = vsi->num_tx_desc;
  ring->size = 0;
  ring->dcb_tc = 0;
  if (vsi->back->hw_features & I40E_HW_WB_ON_ITR_CAPABLE)
   ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
  ring->itr_setting = pf->tx_itr_default;
  vsi->tx_rings[i] = ring++;

  if (!i40e_enabled_xdp_vsi(vsi))
   goto setup_rx;

  ring->queue_index = vsi->alloc_queue_pairs + i;
  ring->reg_idx = vsi->base_queue + ring->queue_index;
  ring->ring_active = 0;
  ring->vsi = vsi;
  ring->netdev = ((void*)0);
  ring->dev = &pf->pdev->dev;
  ring->count = vsi->num_tx_desc;
  ring->size = 0;
  ring->dcb_tc = 0;
  if (vsi->back->hw_features & I40E_HW_WB_ON_ITR_CAPABLE)
   ring->flags = I40E_TXR_FLAGS_WB_ON_ITR;
  set_ring_xdp(ring);
  ring->itr_setting = pf->tx_itr_default;
  vsi->xdp_rings[i] = ring++;

setup_rx:
  ring->queue_index = i;
  ring->reg_idx = vsi->base_queue + i;
  ring->ring_active = 0;
  ring->vsi = vsi;
  ring->netdev = vsi->netdev;
  ring->dev = &pf->pdev->dev;
  ring->count = vsi->num_rx_desc;
  ring->size = 0;
  ring->dcb_tc = 0;
  ring->itr_setting = pf->rx_itr_default;
  vsi->rx_rings[i] = ring;
 }

 return 0;

err_out:
 i40e_vsi_clear_rings(vsi);
 return -ENOMEM;
}
