
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_ring {int * desc; int dma; int size; int dev; int * rx_buffer; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int fm10k_clean_rx_ring (struct fm10k_ring*) ;
 int vfree (int *) ;

void fm10k_free_rx_resources(struct fm10k_ring *rx_ring)
{
 fm10k_clean_rx_ring(rx_ring);

 vfree(rx_ring->rx_buffer);
 rx_ring->rx_buffer = ((void*)0);


 if (!rx_ring->desc)
  return;

 dma_free_coherent(rx_ring->dev, rx_ring->size,
     rx_ring->desc, rx_ring->dma);

 rx_ring->desc = ((void*)0);
}
