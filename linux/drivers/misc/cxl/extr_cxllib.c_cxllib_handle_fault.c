
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct mm_struct {int dummy; } ;


 int EFAULT ;
 int cxl_handle_mm_fault (struct mm_struct*,unsigned long,unsigned long) ;
 int get_vma_info (struct mm_struct*,unsigned long,unsigned long*,unsigned long*,unsigned long*) ;

int cxllib_handle_fault(struct mm_struct *mm, u64 addr, u64 size, u64 flags)
{
 int rc;
 u64 dar, vma_start, vma_end;
 unsigned long page_size;

 if (mm == ((void*)0))
  return -EFAULT;







 rc = get_vma_info(mm, addr, &vma_start, &vma_end, &page_size);
 if (rc)
  return rc;

 for (dar = (addr & ~(page_size - 1)); dar < (addr + size);
      dar += page_size) {
  if (dar < vma_start || dar >= vma_end) {
   rc = get_vma_info(mm, dar, &vma_start, &vma_end,
     &page_size);
   if (rc)
    return rc;
  }

  rc = cxl_handle_mm_fault(mm, flags, dar);
  if (rc)
   return -EFAULT;
 }
 return 0;
}
