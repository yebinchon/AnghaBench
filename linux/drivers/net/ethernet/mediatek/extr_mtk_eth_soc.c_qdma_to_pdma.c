
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_tx_ring {int dma_pdma; int dma; } ;
struct mtk_tx_dma {int dummy; } ;



__attribute__((used)) static struct mtk_tx_dma *qdma_to_pdma(struct mtk_tx_ring *ring,
           struct mtk_tx_dma *dma)
{
 return ring->dma_pdma - ring->dma + dma;
}
