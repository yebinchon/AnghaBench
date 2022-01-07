
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_tx_swbd {scalar_t__ dma; int len; scalar_t__ is_dma_page; } ;
struct enetc_bdr {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void enetc_unmap_tx_buff(struct enetc_bdr *tx_ring,
    struct enetc_tx_swbd *tx_swbd)
{
 if (tx_swbd->is_dma_page)
  dma_unmap_page(tx_ring->dev, tx_swbd->dma,
          tx_swbd->len, DMA_TO_DEVICE);
 else
  dma_unmap_single(tx_ring->dev, tx_swbd->dma,
     tx_swbd->len, DMA_TO_DEVICE);
 tx_swbd->dma = 0;
}
