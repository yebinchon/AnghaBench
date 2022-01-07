
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct page* alloc_pages (int ,int) ;
 struct page* alloc_pages_node (int,int ,int) ;
 int sg_set_page (struct scatterlist*,struct page*,int,int ) ;

__attribute__((used)) static int mlx4_alloc_icm_pages(struct scatterlist *mem, int order,
    gfp_t gfp_mask, int node)
{
 struct page *page;

 page = alloc_pages_node(node, gfp_mask, order);
 if (!page) {
  page = alloc_pages(gfp_mask, order);
  if (!page)
   return -ENOMEM;
 }

 sg_set_page(mem, page, PAGE_SIZE << order, 0);
 return 0;
}
