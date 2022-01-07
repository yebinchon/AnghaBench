
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;


 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static void qp_release_pages(struct page **pages,
        u64 num_pages, bool dirty)
{
 int i;

 for (i = 0; i < num_pages; i++) {
  if (dirty)
   set_page_dirty(pages[i]);

  put_page(pages[i]);
  pages[i] = ((void*)0);
 }
}
