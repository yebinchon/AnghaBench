
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_ring {int * desc; int dma; int size; int dev; int * rx_bi; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int iavf_clean_rx_ring (struct iavf_ring*) ;
 int kfree (int *) ;

void iavf_free_rx_resources(struct iavf_ring *rx_ring)
{
 iavf_clean_rx_ring(rx_ring);
 kfree(rx_ring->rx_bi);
 rx_ring->rx_bi = ((void*)0);

 if (rx_ring->desc) {
  dma_free_coherent(rx_ring->dev, rx_ring->size,
      rx_ring->desc, rx_ring->dma);
  rx_ring->desc = ((void*)0);
 }
}
