
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ixgbe_rx_buffer {scalar_t__ pagecnt_bias; int page_offset; struct page* page; int dma; } ;
struct TYPE_2__ {int alloc_rx_page; int alloc_rx_page_failed; } ;
struct ixgbe_ring {TYPE_1__ rx_stats; int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int IXGBE_RX_DMA_ATTR ;
 scalar_t__ USHRT_MAX ;
 int __free_pages (struct page*,int ) ;
 struct page* dev_alloc_pages (int ) ;
 int dma_map_page_attrs (int ,struct page*,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int ixgbe_rx_offset (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_order (struct ixgbe_ring*) ;
 int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 scalar_t__ likely (struct page*) ;
 int page_ref_add (struct page*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ixgbe_alloc_mapped_page(struct ixgbe_ring *rx_ring,
        struct ixgbe_rx_buffer *bi)
{
 struct page *page = bi->page;
 dma_addr_t dma;


 if (likely(page))
  return 1;


 page = dev_alloc_pages(ixgbe_rx_pg_order(rx_ring));
 if (unlikely(!page)) {
  rx_ring->rx_stats.alloc_rx_page_failed++;
  return 0;
 }


 dma = dma_map_page_attrs(rx_ring->dev, page, 0,
     ixgbe_rx_pg_size(rx_ring),
     DMA_FROM_DEVICE,
     IXGBE_RX_DMA_ATTR);





 if (dma_mapping_error(rx_ring->dev, dma)) {
  __free_pages(page, ixgbe_rx_pg_order(rx_ring));

  rx_ring->rx_stats.alloc_rx_page_failed++;
  return 0;
 }

 bi->dma = dma;
 bi->page = page;
 bi->page_offset = ixgbe_rx_offset(rx_ring);
 page_ref_add(page, USHRT_MAX - 1);
 bi->pagecnt_bias = USHRT_MAX;
 rx_ring->rx_stats.alloc_rx_page++;

 return 1;
}
