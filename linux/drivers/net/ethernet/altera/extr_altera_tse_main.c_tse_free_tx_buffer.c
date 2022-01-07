
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_buffer {int * skb; scalar_t__ dma_addr; int len; scalar_t__ mapped_as_page; } ;
struct altera_tse_private {int device; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void tse_free_tx_buffer(struct altera_tse_private *priv,
          struct tse_buffer *buffer)
{
 if (buffer->dma_addr) {
  if (buffer->mapped_as_page)
   dma_unmap_page(priv->device, buffer->dma_addr,
           buffer->len, DMA_TO_DEVICE);
  else
   dma_unmap_single(priv->device, buffer->dma_addr,
      buffer->len, DMA_TO_DEVICE);
  buffer->dma_addr = 0;
 }
 if (buffer->skb) {
  dev_kfree_skb_any(buffer->skb);
  buffer->skb = ((void*)0);
 }
}
