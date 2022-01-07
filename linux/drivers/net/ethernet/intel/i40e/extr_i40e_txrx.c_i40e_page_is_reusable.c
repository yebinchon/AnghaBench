
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ numa_mem_id () ;
 int page_is_pfmemalloc (struct page*) ;
 scalar_t__ page_to_nid (struct page*) ;

__attribute__((used)) static inline bool i40e_page_is_reusable(struct page *page)
{
 return (page_to_nid(page) == numa_mem_id()) &&
  !page_is_pfmemalloc(page);
}
