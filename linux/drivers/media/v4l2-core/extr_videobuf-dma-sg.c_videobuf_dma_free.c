
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int nr_pages; int direction; scalar_t__ bus_addr; int * vaddr; int * vaddr_pages; int * dma_addr; int dev; int * pages; int sglen; int magic; } ;


 int BUG_ON (int ) ;
 int DMA_NONE ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DMABUF ;
 int PAGE_SIZE ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 int kfree (int *) ;
 void* page_address (int ) ;
 int put_page (int ) ;
 int vunmap (int *) ;

int videobuf_dma_free(struct videobuf_dmabuf *dma)
{
 int i;
 MAGIC_CHECK(dma->magic, MAGIC_DMABUF);
 BUG_ON(dma->sglen);

 if (dma->pages) {
  for (i = 0; i < dma->nr_pages; i++)
   put_page(dma->pages[i]);
  kfree(dma->pages);
  dma->pages = ((void*)0);
 }

 if (dma->dma_addr) {
  for (i = 0; i < dma->nr_pages; i++) {
   void *addr;

   addr = page_address(dma->vaddr_pages[i]);
   dma_free_coherent(dma->dev, PAGE_SIZE, addr,
       dma->dma_addr[i]);
  }
  kfree(dma->dma_addr);
  dma->dma_addr = ((void*)0);
  kfree(dma->vaddr_pages);
  dma->vaddr_pages = ((void*)0);
  vunmap(dma->vaddr);
  dma->vaddr = ((void*)0);
 }

 if (dma->bus_addr)
  dma->bus_addr = 0;
 dma->direction = DMA_NONE;

 return 0;
}
