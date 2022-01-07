
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_tx_ring {scalar_t__ dma; } ;
struct mtk_tx_dma {int dummy; } ;



__attribute__((used)) static int txd_to_idx(struct mtk_tx_ring *ring, struct mtk_tx_dma *dma)
{
 return ((void *)dma - (void *)ring->dma) / sizeof(*dma);
}
