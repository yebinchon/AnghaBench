
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_ring {int * desc; int dma; int size; int dev; int * tx_buffer_info; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int igc_clean_tx_ring (struct igc_ring*) ;
 int vfree (int *) ;

void igc_free_tx_resources(struct igc_ring *tx_ring)
{
 igc_clean_tx_ring(tx_ring);

 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);


 if (!tx_ring->desc)
  return;

 dma_free_coherent(tx_ring->dev, tx_ring->size,
     tx_ring->desc, tx_ring->dma);

 tx_ring->desc = ((void*)0);
}
