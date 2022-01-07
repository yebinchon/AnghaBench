
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mvneta_rx_queue {int dummy; } ;
struct mvneta_rx_desc {int dummy; } ;
struct mvneta_port {scalar_t__ rx_offset_correction; TYPE_2__* dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int PAGE_SIZE ;
 struct page* __dev_alloc_page (int ) ;
 int __free_page (struct page*) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int mvneta_rx_desc_fill (struct mvneta_rx_desc*,int ,struct page*,struct mvneta_rx_queue*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mvneta_rx_refill(struct mvneta_port *pp,
       struct mvneta_rx_desc *rx_desc,
       struct mvneta_rx_queue *rxq,
       gfp_t gfp_mask)
{
 dma_addr_t phys_addr;
 struct page *page;

 page = __dev_alloc_page(gfp_mask);
 if (!page)
  return -ENOMEM;


 phys_addr = dma_map_page(pp->dev->dev.parent, page, 0, PAGE_SIZE,
     DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(pp->dev->dev.parent, phys_addr))) {
  __free_page(page);
  return -ENOMEM;
 }

 phys_addr += pp->rx_offset_correction;
 mvneta_rx_desc_fill(rx_desc, phys_addr, page, rxq);
 return 0;
}
