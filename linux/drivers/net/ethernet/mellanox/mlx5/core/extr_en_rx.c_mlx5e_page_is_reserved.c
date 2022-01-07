
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ numa_mem_id () ;
 scalar_t__ page_is_pfmemalloc (struct page*) ;
 scalar_t__ page_to_nid (struct page*) ;

__attribute__((used)) static inline bool mlx5e_page_is_reserved(struct page *page)
{
 return page_is_pfmemalloc(page) || page_to_nid(page) != numa_mem_id();
}
