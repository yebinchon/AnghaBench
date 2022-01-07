
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_ring {int * desc; int dma; int size; int dev; int * rx_buffer_info; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int igb_clean_rx_ring (struct igb_ring*) ;
 int vfree (int *) ;

void igb_free_rx_resources(struct igb_ring *rx_ring)
{
 igb_clean_rx_ring(rx_ring);

 vfree(rx_ring->rx_buffer_info);
 rx_ring->rx_buffer_info = ((void*)0);


 if (!rx_ring->desc)
  return;

 dma_free_coherent(rx_ring->dev, rx_ring->size,
     rx_ring->desc, rx_ring->dma);

 rx_ring->desc = ((void*)0);
}
