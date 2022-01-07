
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {int pagecnt_bias; int page_offset; int dma; struct sk_buff* skb; int page; } ;
struct ixgbe_ring {size_t next_to_clean; int dev; struct ixgbe_rx_buffer* rx_buffer_info; } ;


 int DMA_FROM_DEVICE ;
 int IXGBE_RXD_STAT_EOP ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,unsigned int const,int ) ;
 int ixgbe_dma_sync_frag (struct ixgbe_ring*,struct sk_buff*) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int prefetchw (int ) ;

__attribute__((used)) static struct ixgbe_rx_buffer *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
         union ixgbe_adv_rx_desc *rx_desc,
         struct sk_buff **skb,
         const unsigned int size)
{
 struct ixgbe_rx_buffer *rx_buffer;

 rx_buffer = &rx_ring->rx_buffer_info[rx_ring->next_to_clean];
 prefetchw(rx_buffer->page);
 *skb = rx_buffer->skb;





 if (!ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_EOP)) {
  if (!*skb)
   goto skip_sync;
 } else {
  if (*skb)
   ixgbe_dma_sync_frag(rx_ring, *skb);
 }


 dma_sync_single_range_for_cpu(rx_ring->dev,
          rx_buffer->dma,
          rx_buffer->page_offset,
          size,
          DMA_FROM_DEVICE);
skip_sync:
 rx_buffer->pagecnt_bias--;

 return rx_buffer;
}
