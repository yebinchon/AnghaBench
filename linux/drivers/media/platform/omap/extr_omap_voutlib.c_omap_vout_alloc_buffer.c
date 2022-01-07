
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int GFP_KERNEL ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int SetPageReserved (int ) ;
 unsigned long __get_free_pages (int ,scalar_t__) ;
 scalar_t__ get_order (scalar_t__) ;
 int virt_to_page (unsigned long) ;
 scalar_t__ virt_to_phys (void*) ;

unsigned long omap_vout_alloc_buffer(u32 buf_size, u32 *phys_addr)
{
 u32 order, size;
 unsigned long virt_addr, addr;

 size = PAGE_ALIGN(buf_size);
 order = get_order(size);
 virt_addr = __get_free_pages(GFP_KERNEL, order);
 addr = virt_addr;

 if (virt_addr) {
  while (size > 0) {
   SetPageReserved(virt_to_page(addr));
   addr += PAGE_SIZE;
   size -= PAGE_SIZE;
  }
 }
 *phys_addr = (u32) virt_to_phys((void *) virt_addr);
 return virt_addr;
}
