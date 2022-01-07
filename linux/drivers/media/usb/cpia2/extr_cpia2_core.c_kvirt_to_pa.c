
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 unsigned long __pa (unsigned long) ;
 scalar_t__ page_address (int ) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static inline unsigned long kvirt_to_pa(unsigned long adr)
{
 unsigned long kva, ret;

 kva = (unsigned long) page_address(vmalloc_to_page((void *)adr));
 kva |= adr & (PAGE_SIZE-1);
 ret = __pa(kva);
 return ret;
}
