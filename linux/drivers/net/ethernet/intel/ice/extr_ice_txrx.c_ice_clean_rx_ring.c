
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ice_rx_buf {scalar_t__ page_offset; int * page; int pagecnt_bias; int dma; int * skb; } ;
struct ice_ring {size_t count; int size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; struct ice_rx_buf* desc; struct ice_rx_buf* rx_buf; struct device* dev; } ;
struct device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int ICE_RXBUF_2048 ;
 int ICE_RX_DMA_ATTR ;
 int PAGE_SIZE ;
 int __page_frag_cache_drain (int *,int ) ;
 int dev_kfree_skb (int *) ;
 int dma_sync_single_range_for_cpu (struct device*,int ,scalar_t__,int ,int ) ;
 int dma_unmap_page_attrs (struct device*,int ,int ,int ,int ) ;
 int memset (struct ice_rx_buf*,int ,int) ;

void ice_clean_rx_ring(struct ice_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;
 u16 i;


 if (!rx_ring->rx_buf)
  return;


 for (i = 0; i < rx_ring->count; i++) {
  struct ice_rx_buf *rx_buf = &rx_ring->rx_buf[i];

  if (rx_buf->skb) {
   dev_kfree_skb(rx_buf->skb);
   rx_buf->skb = ((void*)0);
  }
  if (!rx_buf->page)
   continue;




  dma_sync_single_range_for_cpu(dev, rx_buf->dma,
           rx_buf->page_offset,
           ICE_RXBUF_2048, DMA_FROM_DEVICE);


  dma_unmap_page_attrs(dev, rx_buf->dma, PAGE_SIZE,
         DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
  __page_frag_cache_drain(rx_buf->page, rx_buf->pagecnt_bias);

  rx_buf->page = ((void*)0);
  rx_buf->page_offset = 0;
 }

 memset(rx_ring->rx_buf, 0, sizeof(*rx_ring->rx_buf) * rx_ring->count);


 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_alloc = 0;
 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
}
