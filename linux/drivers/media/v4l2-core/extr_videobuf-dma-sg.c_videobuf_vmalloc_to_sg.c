
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 int array_size (int,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,int ,int ) ;
 int vfree (struct scatterlist*) ;
 struct page* vmalloc_to_page (unsigned char*) ;
 struct scatterlist* vzalloc (int ) ;

__attribute__((used)) static struct scatterlist *videobuf_vmalloc_to_sg(unsigned char *virt,
        int nr_pages)
{
 struct scatterlist *sglist;
 struct page *pg;
 int i;

 sglist = vzalloc(array_size(nr_pages, sizeof(*sglist)));
 if (((void*)0) == sglist)
  return ((void*)0);
 sg_init_table(sglist, nr_pages);
 for (i = 0; i < nr_pages; i++, virt += PAGE_SIZE) {
  pg = vmalloc_to_page(virt);
  if (((void*)0) == pg)
   goto err;
  BUG_ON(PageHighMem(pg));
  sg_set_page(&sglist[i], pg, PAGE_SIZE, 0);
 }
 return sglist;

err:
 vfree(sglist);
 return ((void*)0);
}
