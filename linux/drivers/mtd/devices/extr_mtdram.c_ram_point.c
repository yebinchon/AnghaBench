
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {void* priv; } ;
typedef unsigned long resource_size_t ;
typedef int loff_t ;


 size_t PAGE_SIZE ;
 int __pfn_to_phys (unsigned long) ;
 int offset_in_page (void*) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int ram_point(struct mtd_info *mtd, loff_t from, size_t len,
  size_t *retlen, void **virt, resource_size_t *phys)
{
 *virt = mtd->priv + from;
 *retlen = len;

 if (phys) {

  unsigned long page_ofs = offset_in_page(*virt);
  void *addr = *virt - page_ofs;
  unsigned long pfn1, pfn0 = vmalloc_to_pfn(addr);

  *phys = __pfn_to_phys(pfn0) + page_ofs;
  len += page_ofs;
  while (len > PAGE_SIZE) {
   len -= PAGE_SIZE;
   addr += PAGE_SIZE;
   pfn0++;
   pfn1 = vmalloc_to_pfn(addr);
   if (pfn1 != pfn0) {
    *retlen = addr - *virt;
    break;
   }
  }
 }

 return 0;
}
