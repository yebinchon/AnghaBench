
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EHEA_HUGEPAGESHIFT ;
 unsigned long EHEA_HUGEPAGE_PFN_MASK ;
 scalar_t__ PAGE_SHIFT ;
 int compound_order (int ) ;
 int pfn_to_page (unsigned long) ;

__attribute__((used)) static int ehea_is_hugepage(unsigned long pfn)
{
 int page_order;

 if (pfn & EHEA_HUGEPAGE_PFN_MASK)
  return 0;

 page_order = compound_order(pfn_to_page(pfn));
 if (page_order + PAGE_SHIFT != EHEA_HUGEPAGESHIFT)
  return 0;

 return 1;
}
