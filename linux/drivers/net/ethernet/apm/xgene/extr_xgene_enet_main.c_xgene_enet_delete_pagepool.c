
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int slots; int * frag_dma_addr; struct page** frag_page; int ndev; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 struct device* ndev_to_dev (int ) ;
 int put_page (struct page*) ;

__attribute__((used)) static void xgene_enet_delete_pagepool(struct xgene_enet_desc_ring *buf_pool)
{
 struct device *dev = ndev_to_dev(buf_pool->ndev);
 dma_addr_t dma_addr;
 struct page *page;
 int i;


 for (i = 0; i < buf_pool->slots; i++) {
  page = buf_pool->frag_page[i];
  if (page) {
   dma_addr = buf_pool->frag_dma_addr[i];
   dma_unmap_page(dev, dma_addr, PAGE_SIZE,
           DMA_FROM_DEVICE);
   put_page(page);
  }
 }
}
