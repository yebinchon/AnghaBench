
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGN (size_t,int ) ;
 int PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int vfree (void*) ;

__attribute__((used)) static inline void scif_free(void *addr, size_t size)
{
 size_t align = ALIGN(size, PAGE_SIZE);

 if (is_vmalloc_addr(addr))
  vfree(addr);
 else
  free_pages((unsigned long)addr, get_order(align));
}
