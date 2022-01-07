
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 int dma_mapping_error (struct device*,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int) ;
 int put_page (struct page*) ;

void gve_free_page(struct device *dev, struct page *page, dma_addr_t dma,
     enum dma_data_direction dir)
{
 if (!dma_mapping_error(dev, dma))
  dma_unmap_page(dev, dma, PAGE_SIZE, dir);
 if (page)
  put_page(page);
}
