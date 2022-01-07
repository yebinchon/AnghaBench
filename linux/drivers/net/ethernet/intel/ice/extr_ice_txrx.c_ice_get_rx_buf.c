
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ice_rx_buf {int pagecnt_bias; int page_offset; int dma; struct sk_buff* skb; int page; } ;
struct ice_ring {size_t next_to_clean; int dev; struct ice_rx_buf* rx_buf; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,unsigned int const,int ) ;
 int prefetchw (int ) ;

__attribute__((used)) static struct ice_rx_buf *
ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
        const unsigned int size)
{
 struct ice_rx_buf *rx_buf;

 rx_buf = &rx_ring->rx_buf[rx_ring->next_to_clean];
 prefetchw(rx_buf->page);
 *skb = rx_buf->skb;

 if (!size)
  return rx_buf;

 dma_sync_single_range_for_cpu(rx_ring->dev, rx_buf->dma,
          rx_buf->page_offset, size,
          DMA_FROM_DEVICE);


 rx_buf->pagecnt_bias--;

 return rx_buf;
}
