
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ice_rx_buf {scalar_t__ pagecnt_bias; scalar_t__ page_offset; struct page* page; int dma; } ;
struct TYPE_2__ {int alloc_page_failed; int page_reuse_count; } ;
struct ice_ring {TYPE_1__ rx_stats; int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 int ICE_RX_DMA_ATTR ;
 int PAGE_SIZE ;
 scalar_t__ USHRT_MAX ;
 int __GFP_NOWARN ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_page (int) ;
 int dma_map_page_attrs (int ,struct page*,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ likely (struct page*) ;
 int page_ref_add (struct page*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
ice_alloc_mapped_page(struct ice_ring *rx_ring, struct ice_rx_buf *bi)
{
 struct page *page = bi->page;
 dma_addr_t dma;


 if (likely(page)) {
  rx_ring->rx_stats.page_reuse_count++;
  return 1;
 }


 page = alloc_page(GFP_ATOMIC | __GFP_NOWARN);
 if (unlikely(!page)) {
  rx_ring->rx_stats.alloc_page_failed++;
  return 0;
 }


 dma = dma_map_page_attrs(rx_ring->dev, page, 0, PAGE_SIZE,
     DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);




 if (dma_mapping_error(rx_ring->dev, dma)) {
  __free_pages(page, 0);
  rx_ring->rx_stats.alloc_page_failed++;
  return 0;
 }

 bi->dma = dma;
 bi->page = page;
 bi->page_offset = 0;
 page_ref_add(page, USHRT_MAX - 1);
 bi->pagecnt_bias = USHRT_MAX;

 return 1;
}
