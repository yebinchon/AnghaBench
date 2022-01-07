
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ClearPageReserved (int ) ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int free_pages (unsigned long,scalar_t__) ;
 scalar_t__ get_order (scalar_t__) ;
 int virt_to_page (unsigned long) ;

void omap_vout_free_buffer(unsigned long virtaddr, u32 buf_size)
{
 u32 order, size;
 unsigned long addr = virtaddr;

 size = PAGE_ALIGN(buf_size);
 order = get_order(size);

 while (size > 0) {
  ClearPageReserved(virt_to_page(addr));
  addr += PAGE_SIZE;
  size -= PAGE_SIZE;
 }
 free_pages((unsigned long) virtaddr, order);
}
