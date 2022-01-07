
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearPageReserved (int ) ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 scalar_t__ PAGE_SIZE ;
 int vfree (void*) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static void usbvision_rvfree(void *mem, unsigned long size)
{
 unsigned long adr;

 if (!mem)
  return;

 size = PAGE_ALIGN(size);

 adr = (unsigned long) mem;
 while ((long) size > 0) {
  ClearPageReserved(vmalloc_to_page((void *)adr));
  adr += PAGE_SIZE;
  size -= PAGE_SIZE;
 }

 vfree(mem);
}
