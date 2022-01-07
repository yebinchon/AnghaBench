
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
typedef int phys_addr_t ;


 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 struct scatterlist* kcalloc (int,int,int ) ;
 struct page* pfn_to_page (int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,int,int ) ;

__attribute__((used)) static struct scatterlist *
scif_p2p_setsg(phys_addr_t pa, int page_size, int page_cnt)
{
 struct scatterlist *sg;
 struct page *page;
 int i;

 sg = kcalloc(page_cnt, sizeof(struct scatterlist), GFP_KERNEL);
 if (!sg)
  return ((void*)0);
 sg_init_table(sg, page_cnt);
 for (i = 0; i < page_cnt; i++) {
  page = pfn_to_page(pa >> PAGE_SHIFT);
  sg_set_page(&sg[i], page, page_size, 0);
  pa += page_size;
 }
 return sg;
}
