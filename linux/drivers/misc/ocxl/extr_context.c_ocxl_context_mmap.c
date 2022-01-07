
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; int vm_flags; int * vm_ops; int vm_page_prot; } ;
struct ocxl_context {TYPE_1__* afu; } ;
struct TYPE_2__ {int irq_base_offset; } ;


 int PAGE_SHIFT ;
 int VM_IO ;
 int VM_PFNMAP ;
 int check_mmap_afu_irq (struct ocxl_context*,struct vm_area_struct*) ;
 int check_mmap_mmio (struct ocxl_context*,struct vm_area_struct*) ;
 int ocxl_vmops ;
 int pgprot_noncached (int ) ;

int ocxl_context_mmap(struct ocxl_context *ctx, struct vm_area_struct *vma)
{
 int rc;

 if ((vma->vm_pgoff << PAGE_SHIFT) < ctx->afu->irq_base_offset)
  rc = check_mmap_mmio(ctx, vma);
 else
  rc = check_mmap_afu_irq(ctx, vma);
 if (rc)
  return rc;

 vma->vm_flags |= VM_IO | VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 vma->vm_ops = &ocxl_vmops;
 return 0;
}
