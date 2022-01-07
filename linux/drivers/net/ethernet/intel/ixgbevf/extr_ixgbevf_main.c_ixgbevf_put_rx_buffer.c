
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ixgbevf_rx_buffer {int * page; int pagecnt_bias; int dma; } ;
struct ixgbevf_ring {int dev; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int IXGBEVF_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int *,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 scalar_t__ ixgbevf_can_reuse_rx_page (struct ixgbevf_rx_buffer*) ;
 int ixgbevf_reuse_rx_page (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*) ;
 int ixgbevf_rx_pg_size (struct ixgbevf_ring*) ;

__attribute__((used)) static void ixgbevf_put_rx_buffer(struct ixgbevf_ring *rx_ring,
      struct ixgbevf_rx_buffer *rx_buffer,
      struct sk_buff *skb)
{
 if (ixgbevf_can_reuse_rx_page(rx_buffer)) {

  ixgbevf_reuse_rx_page(rx_ring, rx_buffer);
 } else {
  if (IS_ERR(skb))



   dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
          ixgbevf_rx_pg_size(rx_ring),
          DMA_FROM_DEVICE,
          IXGBEVF_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);
 }


 rx_buffer->page = ((void*)0);
}
