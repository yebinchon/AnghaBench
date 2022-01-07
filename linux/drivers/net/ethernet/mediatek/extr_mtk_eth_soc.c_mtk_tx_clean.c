
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_tx_ring {int * dma_pdma; int phys_pdma; int * dma; int phys; int * buf; } ;
struct mtk_eth {int dev; struct mtk_tx_ring tx_ring; } ;


 int MTK_DMA_SIZE ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int kfree (int *) ;
 int mtk_tx_unmap (struct mtk_eth*,int *) ;

__attribute__((used)) static void mtk_tx_clean(struct mtk_eth *eth)
{
 struct mtk_tx_ring *ring = &eth->tx_ring;
 int i;

 if (ring->buf) {
  for (i = 0; i < MTK_DMA_SIZE; i++)
   mtk_tx_unmap(eth, &ring->buf[i]);
  kfree(ring->buf);
  ring->buf = ((void*)0);
 }

 if (ring->dma) {
  dma_free_coherent(eth->dev,
      MTK_DMA_SIZE * sizeof(*ring->dma),
      ring->dma,
      ring->phys);
  ring->dma = ((void*)0);
 }

 if (ring->dma_pdma) {
  dma_free_coherent(eth->dev,
      MTK_DMA_SIZE * sizeof(*ring->dma_pdma),
      ring->dma_pdma,
      ring->phys_pdma);
  ring->dma_pdma = ((void*)0);
 }
}
