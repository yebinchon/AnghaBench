
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ring {int * desc; int dma; int size; int dev; int * tx_buf; } ;


 int devm_kfree (int ,int *) ;
 int dmam_free_coherent (int ,int ,int *,int ) ;
 int ice_clean_tx_ring (struct ice_ring*) ;

void ice_free_tx_ring(struct ice_ring *tx_ring)
{
 ice_clean_tx_ring(tx_ring);
 devm_kfree(tx_ring->dev, tx_ring->tx_buf);
 tx_ring->tx_buf = ((void*)0);

 if (tx_ring->desc) {
  dmam_free_coherent(tx_ring->dev, tx_ring->size,
       tx_ring->desc, tx_ring->dma);
  tx_ring->desc = ((void*)0);
 }
}
