
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_ring {int * desc; int dma; int size; int dev; int * rx_bi; int * xdp_prog; int xdp_rxq; TYPE_1__* vsi; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ I40E_VSI_MAIN ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int i40e_clean_rx_ring (struct i40e_ring*) ;
 int kfree (int *) ;
 int xdp_rxq_info_unreg (int *) ;

void i40e_free_rx_resources(struct i40e_ring *rx_ring)
{
 i40e_clean_rx_ring(rx_ring);
 if (rx_ring->vsi->type == I40E_VSI_MAIN)
  xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 rx_ring->xdp_prog = ((void*)0);
 kfree(rx_ring->rx_bi);
 rx_ring->rx_bi = ((void*)0);

 if (rx_ring->desc) {
  dma_free_coherent(rx_ring->dev, rx_ring->size,
      rx_ring->desc, rx_ring->dma);
  rx_ring->desc = ((void*)0);
 }
}
