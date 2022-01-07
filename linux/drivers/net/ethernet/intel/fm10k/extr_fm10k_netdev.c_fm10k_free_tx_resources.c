
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_ring {int * desc; int dma; int size; int dev; int * tx_buffer; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int fm10k_clean_tx_ring (struct fm10k_ring*) ;
 int vfree (int *) ;

void fm10k_free_tx_resources(struct fm10k_ring *tx_ring)
{
 fm10k_clean_tx_ring(tx_ring);

 vfree(tx_ring->tx_buffer);
 tx_ring->tx_buffer = ((void*)0);


 if (!tx_ring->desc)
  return;

 dma_free_coherent(tx_ring->dev, tx_ring->size,
     tx_ring->desc, tx_ring->dma);
 tx_ring->desc = ((void*)0);
}
