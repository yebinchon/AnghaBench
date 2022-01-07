
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_tx_buf {int * skb; int * next_to_watch; } ;
struct ice_ring {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma ;
 int dma_unmap_addr (struct ice_tx_buf*,int ) ;
 scalar_t__ dma_unmap_len (struct ice_tx_buf*,int ) ;
 int dma_unmap_len_set (struct ice_tx_buf*,int ,int ) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int len ;

__attribute__((used)) static void
ice_unmap_and_free_tx_buf(struct ice_ring *ring, struct ice_tx_buf *tx_buf)
{
 if (tx_buf->skb) {
  dev_kfree_skb_any(tx_buf->skb);
  if (dma_unmap_len(tx_buf, len))
   dma_unmap_single(ring->dev,
      dma_unmap_addr(tx_buf, dma),
      dma_unmap_len(tx_buf, len),
      DMA_TO_DEVICE);
 } else if (dma_unmap_len(tx_buf, len)) {
  dma_unmap_page(ring->dev,
          dma_unmap_addr(tx_buf, dma),
          dma_unmap_len(tx_buf, len),
          DMA_TO_DEVICE);
 }

 tx_buf->next_to_watch = ((void*)0);
 tx_buf->skb = ((void*)0);
 dma_unmap_len_set(tx_buf, len, 0);

}
