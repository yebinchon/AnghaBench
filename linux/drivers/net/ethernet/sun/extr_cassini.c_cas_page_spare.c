
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cas {int rx_inuse_lock; int rx_inuse_list; TYPE_1__*** rx_pages; } ;
struct TYPE_4__ {int list; int buffer; } ;
typedef TYPE_1__ cas_page_t ;


 TYPE_1__* cas_page_dequeue (struct cas*) ;
 int list_add (int *,int *) ;
 int page_count (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline cas_page_t *cas_page_spare(struct cas *cp, const int index)
{
 cas_page_t *page = cp->rx_pages[1][index];
 cas_page_t *new;

 if (page_count(page->buffer) == 1)
  return page;

 new = cas_page_dequeue(cp);
 if (new) {
  spin_lock(&cp->rx_inuse_lock);
  list_add(&page->list, &cp->rx_inuse_list);
  spin_unlock(&cp->rx_inuse_lock);
 }
 return new;
}
