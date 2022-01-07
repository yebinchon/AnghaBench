
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nixge_tx_skb {int * skb; scalar_t__ mapping; int size; scalar_t__ mapped_as_page; } ;
struct nixge_priv {TYPE_2__* ndev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void nixge_tx_skb_unmap(struct nixge_priv *priv,
          struct nixge_tx_skb *tx_skb)
{
 if (tx_skb->mapping) {
  if (tx_skb->mapped_as_page)
   dma_unmap_page(priv->ndev->dev.parent, tx_skb->mapping,
           tx_skb->size, DMA_TO_DEVICE);
  else
   dma_unmap_single(priv->ndev->dev.parent,
      tx_skb->mapping,
      tx_skb->size, DMA_TO_DEVICE);
  tx_skb->mapping = 0;
 }

 if (tx_skb->skb) {
  dev_kfree_skb_any(tx_skb->skb);
  tx_skb->skb = ((void*)0);
 }
}
