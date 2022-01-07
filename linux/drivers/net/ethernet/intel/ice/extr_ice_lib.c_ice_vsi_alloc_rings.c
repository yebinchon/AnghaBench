
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {int alloc_txq; int alloc_rxq; struct ice_ring** rx_rings; int num_rx_desc; int netdev; int * rxq_map; struct ice_ring** tx_rings; int num_tx_desc; int * txq_map; struct ice_pf* back; } ;
struct ice_ring {int q_index; int ring_active; int count; int * dev; int netdev; struct ice_vsi* vsi; int reg_idx; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ice_vsi_clear_rings (struct ice_vsi*) ;
 struct ice_ring* kzalloc (int,int ) ;

__attribute__((used)) static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 int i;


 for (i = 0; i < vsi->alloc_txq; i++) {
  struct ice_ring *ring;


  ring = kzalloc(sizeof(*ring), GFP_KERNEL);

  if (!ring)
   goto err_out;

  ring->q_index = i;
  ring->reg_idx = vsi->txq_map[i];
  ring->ring_active = 0;
  ring->vsi = vsi;
  ring->dev = &pf->pdev->dev;
  ring->count = vsi->num_tx_desc;
  vsi->tx_rings[i] = ring;
 }


 for (i = 0; i < vsi->alloc_rxq; i++) {
  struct ice_ring *ring;


  ring = kzalloc(sizeof(*ring), GFP_KERNEL);
  if (!ring)
   goto err_out;

  ring->q_index = i;
  ring->reg_idx = vsi->rxq_map[i];
  ring->ring_active = 0;
  ring->vsi = vsi;
  ring->netdev = vsi->netdev;
  ring->dev = &pf->pdev->dev;
  ring->count = vsi->num_rx_desc;
  vsi->rx_rings[i] = ring;
 }

 return 0;

err_out:
 ice_vsi_clear_rings(vsi);
 return -ENOMEM;
}
