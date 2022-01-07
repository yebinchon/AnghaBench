
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int * desc; int dma; int size; int dev; int * rx_buffer_info; int xdp_rxq; int * xdp_prog; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int ixgbe_clean_rx_ring (struct ixgbe_ring*) ;
 int vfree (int *) ;
 int xdp_rxq_info_unreg (int *) ;

void ixgbe_free_rx_resources(struct ixgbe_ring *rx_ring)
{
 ixgbe_clean_rx_ring(rx_ring);

 rx_ring->xdp_prog = ((void*)0);
 xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);


 if (!rx_ring->desc)
  return;

 dma_free_coherent(rx_ring->dev, rx_ring->size,
     rx_ring->desc, rx_ring->dma);

 rx_ring->desc = ((void*)0);
}
