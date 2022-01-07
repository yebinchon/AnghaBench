
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct device {int dummy; } ;
struct bnxt_rx_ring_info {int page_pool; } ;
struct bnxt {scalar_t__ rx_dma_offset; int rx_dir; TYPE_1__* pdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_ATTR_WEAK_ORDERING ;
 int PAGE_SIZE ;
 int dma_map_page_attrs (struct device*,struct page*,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 struct page* page_pool_dev_alloc_pages (int ) ;
 int page_pool_recycle_direct (int ,struct page*) ;

__attribute__((used)) static struct page *__bnxt_alloc_rx_page(struct bnxt *bp, dma_addr_t *mapping,
      struct bnxt_rx_ring_info *rxr,
      gfp_t gfp)
{
 struct device *dev = &bp->pdev->dev;
 struct page *page;

 page = page_pool_dev_alloc_pages(rxr->page_pool);
 if (!page)
  return ((void*)0);

 *mapping = dma_map_page_attrs(dev, page, 0, PAGE_SIZE, bp->rx_dir,
          DMA_ATTR_WEAK_ORDERING);
 if (dma_mapping_error(dev, *mapping)) {
  page_pool_recycle_direct(rxr->page_pool, page);
  return ((void*)0);
 }
 *mapping += bp->rx_dma_offset;
 return page;
}
