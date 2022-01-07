
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct pci_dev {int dev; } ;
struct page {int dummy; } ;
struct bnxt_tpa_info {int * data; int mapping; } ;
struct bnxt_tpa_idx_map {int agg_idx_bmap; } ;
struct bnxt_sw_rx_bd {int * data; int mapping; } ;
struct bnxt_sw_rx_agg_bd {struct page* page; int mapping; } ;
struct bnxt_rx_ring_info {struct bnxt_tpa_idx_map* rx_tpa_idx_map; struct page* rx_page; int rx_agg_bmap; struct bnxt_sw_rx_agg_bd* rx_agg_ring; int page_pool; struct bnxt_sw_rx_bd* rx_buf_ring; struct bnxt_tpa_info* rx_tpa; } ;
struct bnxt {int rx_nr_pages; int rx_agg_nr_pages; int rx_nr_rings; int max_tpa; int rx_dir; int rx_buf_use_size; scalar_t__ rx_dma_offset; struct bnxt_rx_ring_info* rx_ring; struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 scalar_t__ BNXT_RX_PAGE_MODE (struct bnxt*) ;
 int BNXT_RX_PAGE_SIZE ;
 int DMA_ATTR_WEAK_ORDERING ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_DESC_CNT ;
 int __clear_bit (int,int ) ;
 int __free_page (struct page*) ;
 int dma_unmap_page_attrs (int *,int ,int ,int ,int ) ;
 int dma_unmap_single_attrs (int *,int ,int ,int ,int ) ;
 int kfree (void*) ;
 int memset (int ,int ,int) ;
 int page_pool_recycle_direct (int ,void*) ;

__attribute__((used)) static void bnxt_free_rx_skbs(struct bnxt *bp)
{
 int i, max_idx, max_agg_idx;
 struct pci_dev *pdev = bp->pdev;

 if (!bp->rx_ring)
  return;

 max_idx = bp->rx_nr_pages * RX_DESC_CNT;
 max_agg_idx = bp->rx_agg_nr_pages * RX_DESC_CNT;
 for (i = 0; i < bp->rx_nr_rings; i++) {
  struct bnxt_rx_ring_info *rxr = &bp->rx_ring[i];
  struct bnxt_tpa_idx_map *map;
  int j;

  if (rxr->rx_tpa) {
   for (j = 0; j < bp->max_tpa; j++) {
    struct bnxt_tpa_info *tpa_info =
       &rxr->rx_tpa[j];
    u8 *data = tpa_info->data;

    if (!data)
     continue;

    dma_unmap_single_attrs(&pdev->dev,
             tpa_info->mapping,
             bp->rx_buf_use_size,
             bp->rx_dir,
             DMA_ATTR_WEAK_ORDERING);

    tpa_info->data = ((void*)0);

    kfree(data);
   }
  }

  for (j = 0; j < max_idx; j++) {
   struct bnxt_sw_rx_bd *rx_buf = &rxr->rx_buf_ring[j];
   dma_addr_t mapping = rx_buf->mapping;
   void *data = rx_buf->data;

   if (!data)
    continue;

   rx_buf->data = ((void*)0);

   if (BNXT_RX_PAGE_MODE(bp)) {
    mapping -= bp->rx_dma_offset;
    dma_unmap_page_attrs(&pdev->dev, mapping,
           PAGE_SIZE, bp->rx_dir,
           DMA_ATTR_WEAK_ORDERING);
    page_pool_recycle_direct(rxr->page_pool, data);
   } else {
    dma_unmap_single_attrs(&pdev->dev, mapping,
             bp->rx_buf_use_size,
             bp->rx_dir,
             DMA_ATTR_WEAK_ORDERING);
    kfree(data);
   }
  }

  for (j = 0; j < max_agg_idx; j++) {
   struct bnxt_sw_rx_agg_bd *rx_agg_buf =
    &rxr->rx_agg_ring[j];
   struct page *page = rx_agg_buf->page;

   if (!page)
    continue;

   dma_unmap_page_attrs(&pdev->dev, rx_agg_buf->mapping,
          BNXT_RX_PAGE_SIZE,
          PCI_DMA_FROMDEVICE,
          DMA_ATTR_WEAK_ORDERING);

   rx_agg_buf->page = ((void*)0);
   __clear_bit(j, rxr->rx_agg_bmap);

   __free_page(page);
  }
  if (rxr->rx_page) {
   __free_page(rxr->rx_page);
   rxr->rx_page = ((void*)0);
  }
  map = rxr->rx_tpa_idx_map;
  if (map)
   memset(map->agg_idx_bmap, 0, sizeof(map->agg_idx_bmap));
 }
}
