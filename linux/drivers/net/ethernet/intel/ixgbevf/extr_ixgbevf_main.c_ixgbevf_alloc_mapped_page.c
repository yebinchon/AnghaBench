
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ixgbevf_rx_buffer {int pagecnt_bias; int page_offset; struct page* page; int dma; } ;
struct TYPE_2__ {int alloc_rx_page; int alloc_rx_page_failed; } ;
struct ixgbevf_ring {TYPE_1__ rx_stats; int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int IXGBEVF_RX_DMA_ATTR ;
 int __free_pages (struct page*,int ) ;
 struct page* dev_alloc_pages (int ) ;
 int dma_map_page_attrs (int ,struct page*,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int ixgbevf_rx_offset (struct ixgbevf_ring*) ;
 int ixgbevf_rx_pg_order (struct ixgbevf_ring*) ;
 int ixgbevf_rx_pg_size (struct ixgbevf_ring*) ;
 scalar_t__ likely (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ixgbevf_alloc_mapped_page(struct ixgbevf_ring *rx_ring,
          struct ixgbevf_rx_buffer *bi)
{
 struct page *page = bi->page;
 dma_addr_t dma;


 if (likely(page))
  return 1;


 page = dev_alloc_pages(ixgbevf_rx_pg_order(rx_ring));
 if (unlikely(!page)) {
  rx_ring->rx_stats.alloc_rx_page_failed++;
  return 0;
 }


 dma = dma_map_page_attrs(rx_ring->dev, page, 0,
     ixgbevf_rx_pg_size(rx_ring),
     DMA_FROM_DEVICE, IXGBEVF_RX_DMA_ATTR);




 if (dma_mapping_error(rx_ring->dev, dma)) {
  __free_pages(page, ixgbevf_rx_pg_order(rx_ring));

  rx_ring->rx_stats.alloc_rx_page_failed++;
  return 0;
 }

 bi->dma = dma;
 bi->page = page;
 bi->page_offset = ixgbevf_rx_offset(rx_ring);
 bi->pagecnt_bias = 1;
 rx_ring->rx_stats.alloc_rx_page++;

 return 1;
}
