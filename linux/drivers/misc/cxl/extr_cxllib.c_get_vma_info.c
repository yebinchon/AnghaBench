
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vm_area_struct {int vm_end; int vm_start; } ;
struct mm_struct {int mmap_sem; } ;


 int EFAULT ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,int ) ;
 int up_read (int *) ;
 unsigned long vma_kernel_pagesize (struct vm_area_struct*) ;

__attribute__((used)) static int get_vma_info(struct mm_struct *mm, u64 addr,
   u64 *vma_start, u64 *vma_end,
   unsigned long *page_size)
{
 struct vm_area_struct *vma = ((void*)0);
 int rc = 0;

 down_read(&mm->mmap_sem);

 vma = find_vma(mm, addr);
 if (!vma) {
  rc = -EFAULT;
  goto out;
 }
 *page_size = vma_kernel_pagesize(vma);
 *vma_start = vma->vm_start;
 *vma_end = vma->vm_end;
out:
 up_read(&mm->mmap_sem);
 return rc;
}
