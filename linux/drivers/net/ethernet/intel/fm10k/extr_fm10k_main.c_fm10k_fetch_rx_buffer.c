
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
union fm10k_rx_desc {TYPE_1__ w; } ;
typedef int u8 ;
struct sk_buff {struct page* data; } ;
struct page {int dummy; } ;
struct fm10k_rx_buffer {int page_offset; struct page* page; int dma; } ;
struct TYPE_6__ {int alloc_failed; } ;
struct fm10k_ring {size_t next_to_clean; int dev; TYPE_3__ rx_stats; TYPE_2__* q_vector; struct fm10k_rx_buffer* rx_buffer; } ;
struct TYPE_5__ {int napi; } ;


 int DMA_FROM_DEVICE ;
 int FM10K_RX_HDR_LEN ;
 int L1_CACHE_BYTES ;
 int PAGE_SIZE ;
 int dma_sync_single_range_for_cpu (int ,int ,int,unsigned int,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 scalar_t__ fm10k_add_rx_frag (struct fm10k_rx_buffer*,unsigned int,union fm10k_rx_desc*,struct sk_buff*) ;
 int fm10k_reuse_rx_page (struct fm10k_ring*,struct fm10k_rx_buffer*) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 struct sk_buff* napi_alloc_skb (int *,int ) ;
 void* page_address (struct page*) ;
 int prefetch (void*) ;
 int prefetchw (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *fm10k_fetch_rx_buffer(struct fm10k_ring *rx_ring,
          union fm10k_rx_desc *rx_desc,
          struct sk_buff *skb)
{
 unsigned int size = le16_to_cpu(rx_desc->w.length);
 struct fm10k_rx_buffer *rx_buffer;
 struct page *page;

 rx_buffer = &rx_ring->rx_buffer[rx_ring->next_to_clean];
 page = rx_buffer->page;
 prefetchw(page);

 if (likely(!skb)) {
  void *page_addr = page_address(page) +
      rx_buffer->page_offset;


  prefetch(page_addr);

  prefetch((void *)((u8 *)page_addr + L1_CACHE_BYTES));



  skb = napi_alloc_skb(&rx_ring->q_vector->napi,
         FM10K_RX_HDR_LEN);
  if (unlikely(!skb)) {
   rx_ring->rx_stats.alloc_failed++;
   return ((void*)0);
  }





  prefetchw(skb->data);
 }


 dma_sync_single_range_for_cpu(rx_ring->dev,
          rx_buffer->dma,
          rx_buffer->page_offset,
          size,
          DMA_FROM_DEVICE);


 if (fm10k_add_rx_frag(rx_buffer, size, rx_desc, skb)) {

  fm10k_reuse_rx_page(rx_ring, rx_buffer);
 } else {

  dma_unmap_page(rx_ring->dev, rx_buffer->dma,
          PAGE_SIZE, DMA_FROM_DEVICE);
 }


 rx_buffer->page = ((void*)0);

 return skb;
}
