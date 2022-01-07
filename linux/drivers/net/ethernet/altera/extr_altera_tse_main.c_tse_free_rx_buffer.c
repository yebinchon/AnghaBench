
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_buffer {scalar_t__ dma_addr; struct sk_buff* skb; int len; } ;
struct sk_buff {int dummy; } ;
struct altera_tse_private {int device; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void tse_free_rx_buffer(struct altera_tse_private *priv,
          struct tse_buffer *rxbuffer)
{
 struct sk_buff *skb = rxbuffer->skb;
 dma_addr_t dma_addr = rxbuffer->dma_addr;

 if (skb != ((void*)0)) {
  if (dma_addr)
   dma_unmap_single(priv->device, dma_addr,
      rxbuffer->len,
      DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
  rxbuffer->skb = ((void*)0);
  rxbuffer->dma_addr = 0;
 }
}
