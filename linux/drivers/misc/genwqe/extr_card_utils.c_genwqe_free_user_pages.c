
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_page (struct page*) ;
 int set_page_dirty_lock (struct page*) ;

__attribute__((used)) static int genwqe_free_user_pages(struct page **page_list,
   unsigned int nr_pages, int dirty)
{
 unsigned int i;

 for (i = 0; i < nr_pages; i++) {
  if (page_list[i] != ((void*)0)) {
   if (dirty)
    set_page_dirty_lock(page_list[i]);
   put_page(page_list[i]);
  }
 }
 return 0;
}
