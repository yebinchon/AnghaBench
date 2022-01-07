
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int * desc; int dma; int size; int dev; int * tx_buffer_info; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int ixgbe_clean_tx_ring (struct ixgbe_ring*) ;
 int vfree (int *) ;

void ixgbe_free_tx_resources(struct ixgbe_ring *tx_ring)
{
 ixgbe_clean_tx_ring(tx_ring);

 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);


 if (!tx_ring->desc)
  return;

 dma_free_coherent(tx_ring->dev, tx_ring->size,
     tx_ring->desc, tx_ring->dma);

 tx_ring->desc = ((void*)0);
}
