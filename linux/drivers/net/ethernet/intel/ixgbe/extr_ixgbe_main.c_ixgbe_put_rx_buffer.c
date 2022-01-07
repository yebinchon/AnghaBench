
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {scalar_t__ dma; int * skb; int * page; int pagecnt_bias; } ;
struct ixgbe_ring {int dev; } ;
struct TYPE_2__ {scalar_t__ dma; int page_released; } ;


 int DMA_FROM_DEVICE ;
 int IS_ERR (struct sk_buff*) ;
 TYPE_1__* IXGBE_CB (struct sk_buff*) ;
 int IXGBE_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ ixgbe_can_reuse_rx_page (struct ixgbe_rx_buffer*) ;
 int ixgbe_reuse_rx_page (struct ixgbe_ring*,struct ixgbe_rx_buffer*) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
    struct ixgbe_rx_buffer *rx_buffer,
    struct sk_buff *skb)
{
 if (ixgbe_can_reuse_rx_page(rx_buffer)) {

  ixgbe_reuse_rx_page(rx_ring, rx_buffer);
 } else {
  if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {

   IXGBE_CB(skb)->page_released = 1;
  } else {

   dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
          ixgbe_rx_pg_size(rx_ring),
          DMA_FROM_DEVICE,
          IXGBE_RX_DMA_ATTR);
  }
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);
 }


 rx_buffer->page = ((void*)0);
 rx_buffer->skb = ((void*)0);
}
