
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {int pagecnt_bias; int page; int dma; int page_offset; struct sk_buff* skb; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_alloc; size_t count; scalar_t__ next_to_use; struct ixgbe_rx_buffer* rx_buffer_info; int dev; scalar_t__ xsk_umem; } ;
struct TYPE_2__ {int dma; scalar_t__ page_released; } ;


 int DMA_FROM_DEVICE ;
 TYPE_1__* IXGBE_CB (struct sk_buff*) ;
 int IXGBE_RX_DMA_ATTR ;
 int __page_frag_cache_drain (int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;
 int dma_unmap_page_attrs (int ,int ,int ,int ,int ) ;
 int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 int ixgbe_xsk_clean_rx_ring (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_clean_rx_ring(struct ixgbe_ring *rx_ring)
{
 u16 i = rx_ring->next_to_clean;
 struct ixgbe_rx_buffer *rx_buffer = &rx_ring->rx_buffer_info[i];

 if (rx_ring->xsk_umem) {
  ixgbe_xsk_clean_rx_ring(rx_ring);
  goto skip_free;
 }


 while (i != rx_ring->next_to_alloc) {
  if (rx_buffer->skb) {
   struct sk_buff *skb = rx_buffer->skb;
   if (IXGBE_CB(skb)->page_released)
    dma_unmap_page_attrs(rx_ring->dev,
           IXGBE_CB(skb)->dma,
           ixgbe_rx_pg_size(rx_ring),
           DMA_FROM_DEVICE,
           IXGBE_RX_DMA_ATTR);
   dev_kfree_skb(skb);
  }




  dma_sync_single_range_for_cpu(rx_ring->dev,
           rx_buffer->dma,
           rx_buffer->page_offset,
           ixgbe_rx_bufsz(rx_ring),
           DMA_FROM_DEVICE);


  dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
         ixgbe_rx_pg_size(rx_ring),
         DMA_FROM_DEVICE,
         IXGBE_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buffer->page,
     rx_buffer->pagecnt_bias);

  i++;
  rx_buffer++;
  if (i == rx_ring->count) {
   i = 0;
   rx_buffer = rx_ring->rx_buffer_info;
  }
 }

skip_free:
 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
