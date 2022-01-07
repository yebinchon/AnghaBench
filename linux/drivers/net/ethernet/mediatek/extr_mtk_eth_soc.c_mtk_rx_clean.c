
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_rx_ring {int dma_size; TYPE_1__* dma; int phys; int * data; int buf_size; } ;
struct mtk_eth {int dev; } ;
struct TYPE_2__ {int rxd1; } ;


 int DMA_FROM_DEVICE ;
 int dma_free_coherent (int ,int,TYPE_1__*,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int skb_free_frag (int ) ;

__attribute__((used)) static void mtk_rx_clean(struct mtk_eth *eth, struct mtk_rx_ring *ring)
{
 int i;

 if (ring->data && ring->dma) {
  for (i = 0; i < ring->dma_size; i++) {
   if (!ring->data[i])
    continue;
   if (!ring->dma[i].rxd1)
    continue;
   dma_unmap_single(eth->dev,
      ring->dma[i].rxd1,
      ring->buf_size,
      DMA_FROM_DEVICE);
   skb_free_frag(ring->data[i]);
  }
  kfree(ring->data);
  ring->data = ((void*)0);
 }

 if (ring->dma) {
  dma_free_coherent(eth->dev,
      ring->dma_size * sizeof(*ring->dma),
      ring->dma,
      ring->phys);
  ring->dma = ((void*)0);
 }
}
