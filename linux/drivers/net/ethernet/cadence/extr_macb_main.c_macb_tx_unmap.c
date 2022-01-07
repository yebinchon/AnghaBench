
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macb_tx_skb {int * skb; scalar_t__ mapping; int size; scalar_t__ mapped_as_page; } ;
struct macb {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int *,scalar_t__,int ,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void macb_tx_unmap(struct macb *bp, struct macb_tx_skb *tx_skb)
{
 if (tx_skb->mapping) {
  if (tx_skb->mapped_as_page)
   dma_unmap_page(&bp->pdev->dev, tx_skb->mapping,
           tx_skb->size, DMA_TO_DEVICE);
  else
   dma_unmap_single(&bp->pdev->dev, tx_skb->mapping,
      tx_skb->size, DMA_TO_DEVICE);
  tx_skb->mapping = 0;
 }

 if (tx_skb->skb) {
  dev_kfree_skb_any(tx_skb->skb);
  tx_skb->skb = ((void*)0);
 }
}
