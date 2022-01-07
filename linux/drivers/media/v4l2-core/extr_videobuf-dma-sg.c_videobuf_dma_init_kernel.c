
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int direction; int nr_pages; int * vaddr_pages; int * dma_addr; int dev; int * vaddr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_IOREMAP ;
 int VM_MAP ;
 void* dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 int dprintk (int,char*,int,...) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int memset (int *,int ,int) ;
 void* page_address (int ) ;
 int virt_to_page (void*) ;
 int * vmap (int *,int,int,int ) ;

__attribute__((used)) static int videobuf_dma_init_kernel(struct videobuf_dmabuf *dma, int direction,
        int nr_pages)
{
 int i;

 dprintk(1, "init kernel [%d pages]\n", nr_pages);

 dma->direction = direction;
 dma->vaddr_pages = kcalloc(nr_pages, sizeof(*dma->vaddr_pages),
       GFP_KERNEL);
 if (!dma->vaddr_pages)
  return -ENOMEM;

 dma->dma_addr = kcalloc(nr_pages, sizeof(*dma->dma_addr), GFP_KERNEL);
 if (!dma->dma_addr) {
  kfree(dma->vaddr_pages);
  return -ENOMEM;
 }
 for (i = 0; i < nr_pages; i++) {
  void *addr;

  addr = dma_alloc_coherent(dma->dev, PAGE_SIZE,
       &(dma->dma_addr[i]), GFP_KERNEL);
  if (addr == ((void*)0))
   goto out_free_pages;

  dma->vaddr_pages[i] = virt_to_page(addr);
 }
 dma->vaddr = vmap(dma->vaddr_pages, nr_pages, VM_MAP | VM_IOREMAP,
     PAGE_KERNEL);
 if (((void*)0) == dma->vaddr) {
  dprintk(1, "vmalloc_32(%d pages) failed\n", nr_pages);
  goto out_free_pages;
 }

 dprintk(1, "vmalloc is at addr %p, size=%d\n",
  dma->vaddr, nr_pages << PAGE_SHIFT);

 memset(dma->vaddr, 0, nr_pages << PAGE_SHIFT);
 dma->nr_pages = nr_pages;

 return 0;
out_free_pages:
 while (i > 0) {
  void *addr;

  i--;
  addr = page_address(dma->vaddr_pages[i]);
  dma_free_coherent(dma->dev, PAGE_SIZE, addr, dma->dma_addr[i]);
 }
 kfree(dma->dma_addr);
 dma->dma_addr = ((void*)0);
 kfree(dma->vaddr_pages);
 dma->vaddr_pages = ((void*)0);

 return -ENOMEM;

}
