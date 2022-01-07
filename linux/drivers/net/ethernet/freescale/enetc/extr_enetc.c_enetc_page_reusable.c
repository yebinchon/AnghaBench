
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int page_is_pfmemalloc (struct page*) ;
 int page_ref_count (struct page*) ;

__attribute__((used)) static bool enetc_page_reusable(struct page *page)
{
 return (!page_is_pfmemalloc(page) && page_ref_count(page) == 1);
}
