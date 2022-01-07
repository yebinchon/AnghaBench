
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct ftmac100_txdes {int dummy; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100_descs {int dummy; } ;
struct ftmac100 {int descs_dma_addr; TYPE_1__* descs; int dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct ftmac100_txdes* txdes; struct ftmac100_rxdes* rxdes; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int RX_BUF_SIZE ;
 int RX_QUEUE_ENTRIES ;
 int TX_QUEUE_ENTRIES ;
 int __free_page (struct page*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_free_coherent (int ,int,TYPE_1__*,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int ftmac100_rxdes_get_dma_addr (struct ftmac100_rxdes*) ;
 struct page* ftmac100_rxdes_get_page (struct ftmac100_rxdes*) ;
 int ftmac100_txdes_get_dma_addr (struct ftmac100_txdes*) ;
 struct sk_buff* ftmac100_txdes_get_skb (struct ftmac100_txdes*) ;
 int skb_headlen (struct sk_buff*) ;

__attribute__((used)) static void ftmac100_free_buffers(struct ftmac100 *priv)
{
 int i;

 for (i = 0; i < RX_QUEUE_ENTRIES; i++) {
  struct ftmac100_rxdes *rxdes = &priv->descs->rxdes[i];
  struct page *page = ftmac100_rxdes_get_page(rxdes);
  dma_addr_t map = ftmac100_rxdes_get_dma_addr(rxdes);

  if (!page)
   continue;

  dma_unmap_page(priv->dev, map, RX_BUF_SIZE, DMA_FROM_DEVICE);
  __free_page(page);
 }

 for (i = 0; i < TX_QUEUE_ENTRIES; i++) {
  struct ftmac100_txdes *txdes = &priv->descs->txdes[i];
  struct sk_buff *skb = ftmac100_txdes_get_skb(txdes);
  dma_addr_t map = ftmac100_txdes_get_dma_addr(txdes);

  if (!skb)
   continue;

  dma_unmap_single(priv->dev, map, skb_headlen(skb), DMA_TO_DEVICE);
  dev_kfree_skb(skb);
 }

 dma_free_coherent(priv->dev, sizeof(struct ftmac100_descs),
     priv->descs, priv->descs_dma_addr);
}
