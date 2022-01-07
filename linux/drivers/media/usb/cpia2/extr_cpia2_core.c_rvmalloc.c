
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 scalar_t__ PAGE_SIZE ;
 int SetPageReserved (int ) ;
 int memset (void*,int ,unsigned long) ;
 void* vmalloc_32 (unsigned long) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static void *rvmalloc(unsigned long size)
{
 void *mem;
 unsigned long adr;


 size = PAGE_ALIGN(size);

 mem = vmalloc_32(size);
 if (!mem)
  return ((void*)0);

 memset(mem, 0, size);
 adr = (unsigned long) mem;

 while ((long)size > 0) {
  SetPageReserved(vmalloc_to_page((void *)adr));
  adr += PAGE_SIZE;
  size -= PAGE_SIZE;
 }
 return mem;
}
