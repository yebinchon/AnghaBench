
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; int vm_flags; } ;
struct ocxl_context {int dummy; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int VM_EXEC ;
 int VM_MAYEXEC ;
 int VM_MAYREAD ;
 int VM_READ ;
 int VM_WRITE ;
 int ocxl_afu_irq_get_addr (struct ocxl_context*,int) ;
 int ocxl_irq_offset_to_id (struct ocxl_context*,int) ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int check_mmap_afu_irq(struct ocxl_context *ctx,
   struct vm_area_struct *vma)
{
 int irq_id = ocxl_irq_offset_to_id(ctx, vma->vm_pgoff << PAGE_SHIFT);


 if (vma_pages(vma) != 1)
  return -EINVAL;


 if (!ocxl_afu_irq_get_addr(ctx, irq_id))
  return -EINVAL;







 if ((vma->vm_flags & VM_READ) || (vma->vm_flags & VM_EXEC) ||
  !(vma->vm_flags & VM_WRITE))
  return -EINVAL;
 vma->vm_flags &= ~(VM_MAYREAD | VM_MAYEXEC);
 return 0;
}
