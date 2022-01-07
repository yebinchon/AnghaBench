
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ring {int * desc; int dma; int size; int dev; int * rx_buf; } ;


 int devm_kfree (int ,int *) ;
 int dmam_free_coherent (int ,int ,int *,int ) ;
 int ice_clean_rx_ring (struct ice_ring*) ;

void ice_free_rx_ring(struct ice_ring *rx_ring)
{
 ice_clean_rx_ring(rx_ring);
 devm_kfree(rx_ring->dev, rx_ring->rx_buf);
 rx_ring->rx_buf = ((void*)0);

 if (rx_ring->desc) {
  dmam_free_coherent(rx_ring->dev, rx_ring->size,
       rx_ring->desc, rx_ring->dma);
  rx_ring->desc = ((void*)0);
 }
}
