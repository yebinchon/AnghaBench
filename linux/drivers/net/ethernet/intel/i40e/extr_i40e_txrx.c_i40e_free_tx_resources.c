
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int * desc; int dma; int size; int dev; int * tx_bi; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int i40e_clean_tx_ring (struct i40e_ring*) ;
 int kfree (int *) ;

void i40e_free_tx_resources(struct i40e_ring *tx_ring)
{
 i40e_clean_tx_ring(tx_ring);
 kfree(tx_ring->tx_bi);
 tx_ring->tx_bi = ((void*)0);

 if (tx_ring->desc) {
  dma_free_coherent(tx_ring->dev, tx_ring->size,
      tx_ring->desc, tx_ring->dma);
  tx_ring->desc = ((void*)0);
 }
}
