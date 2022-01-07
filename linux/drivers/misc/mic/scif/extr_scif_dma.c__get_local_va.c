
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {int offset; scalar_t__ type; TYPE_1__* pinned_pages; } ;
struct page {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {struct page** pages; } ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 scalar_t__ SCIF_WINDOW_SELF ;
 void* page_address (struct page*) ;

__attribute__((used)) static inline
void *_get_local_va(off_t off, struct scif_window *window, size_t len)
{
 int page_nr = (off - window->offset) >> PAGE_SHIFT;
 off_t page_off = off & ~PAGE_MASK;
 void *va = ((void*)0);

 if (window->type == SCIF_WINDOW_SELF) {
  struct page **pages = window->pinned_pages->pages;

  va = page_address(pages[page_nr]) + page_off;
 }
 return va;
}
