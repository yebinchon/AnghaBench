
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dmasound {int nr_pages; int * vaddr; int * sglist; } ;
struct saa7134_dev {struct saa7134_dmasound dmasound; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int array_size (int,int) ;
 int memset (int *,int ,int) ;
 int pr_debug (char*,int,...) ;
 int sg_init_table (int *,int) ;
 int sg_set_page (int *,struct page*,int,int ) ;
 int vfree (int *) ;
 int * vmalloc_32 (int) ;
 struct page* vmalloc_to_page (int *) ;
 int * vzalloc (int ) ;

__attribute__((used)) static int saa7134_alsa_dma_init(struct saa7134_dev *dev, int nr_pages)
{
 struct saa7134_dmasound *dma = &dev->dmasound;
 struct page *pg;
 int i;

 dma->vaddr = vmalloc_32(nr_pages << PAGE_SHIFT);
 if (((void*)0) == dma->vaddr) {
  pr_debug("vmalloc_32(%d pages) failed\n", nr_pages);
  return -ENOMEM;
 }

 pr_debug("vmalloc is at addr %p, size=%d\n",
   dma->vaddr, nr_pages << PAGE_SHIFT);

 memset(dma->vaddr, 0, nr_pages << PAGE_SHIFT);
 dma->nr_pages = nr_pages;

 dma->sglist = vzalloc(array_size(sizeof(*dma->sglist), dma->nr_pages));
 if (((void*)0) == dma->sglist)
  goto vzalloc_err;

 sg_init_table(dma->sglist, dma->nr_pages);
 for (i = 0; i < dma->nr_pages; i++) {
  pg = vmalloc_to_page(dma->vaddr + i * PAGE_SIZE);
  if (((void*)0) == pg)
   goto vmalloc_to_page_err;
  sg_set_page(&dma->sglist[i], pg, PAGE_SIZE, 0);
 }
 return 0;

vmalloc_to_page_err:
 vfree(dma->sglist);
 dma->sglist = ((void*)0);
vzalloc_err:
 vfree(dma->vaddr);
 dma->vaddr = ((void*)0);
 return -ENOMEM;
}
