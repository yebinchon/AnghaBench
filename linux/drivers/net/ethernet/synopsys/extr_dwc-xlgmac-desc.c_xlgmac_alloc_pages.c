
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int dev; } ;
struct xlgmac_page_alloc {int pages_len; int pages_dma; scalar_t__ pages_offset; struct page* pages; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 struct page* alloc_pages (int,int) ;
 int dma_map_page (int ,struct page*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int put_page (struct page*) ;

__attribute__((used)) static int xlgmac_alloc_pages(struct xlgmac_pdata *pdata,
         struct xlgmac_page_alloc *pa,
         gfp_t gfp, int order)
{
 struct page *pages = ((void*)0);
 dma_addr_t pages_dma;


 gfp |= __GFP_COMP | __GFP_NOWARN;
 while (order >= 0) {
  pages = alloc_pages(gfp, order);
  if (pages)
   break;

  order--;
 }
 if (!pages)
  return -ENOMEM;


 pages_dma = dma_map_page(pdata->dev, pages, 0,
     PAGE_SIZE << order, DMA_FROM_DEVICE);
 if (dma_mapping_error(pdata->dev, pages_dma)) {
  put_page(pages);
  return -ENOMEM;
 }

 pa->pages = pages;
 pa->pages_len = PAGE_SIZE << order;
 pa->pages_offset = 0;
 pa->pages_dma = pages_dma;

 return 0;
}
