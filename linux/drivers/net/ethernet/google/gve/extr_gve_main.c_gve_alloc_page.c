
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 int dma_map_page (struct device*,struct page*,int ,int ,int) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int put_page (struct page*) ;

int gve_alloc_page(struct device *dev, struct page **page, dma_addr_t *dma,
     enum dma_data_direction dir)
{
 *page = alloc_page(GFP_KERNEL);
 if (!*page)
  return -ENOMEM;
 *dma = dma_map_page(dev, *page, 0, PAGE_SIZE, dir);
 if (dma_mapping_error(dev, *dma)) {
  put_page(*page);
  return -ENOMEM;
 }
 return 0;
}
