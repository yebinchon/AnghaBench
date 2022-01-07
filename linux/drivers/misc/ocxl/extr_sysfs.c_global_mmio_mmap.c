
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; int vm_flags; struct ocxl_afu* vm_private_data; int * vm_ops; int vm_page_prot; } ;
struct TYPE_2__ {int global_mmio_size; } ;
struct ocxl_afu {TYPE_1__ config; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int VM_IO ;
 int VM_PFNMAP ;
 int global_mmio_vmops ;
 int kobj_to_dev (struct kobject*) ;
 int pgprot_noncached (int ) ;
 struct ocxl_afu* to_afu (int ) ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int global_mmio_mmap(struct file *filp, struct kobject *kobj,
   struct bin_attribute *bin_attr,
   struct vm_area_struct *vma)
{
 struct ocxl_afu *afu = to_afu(kobj_to_dev(kobj));

 if ((vma_pages(vma) + vma->vm_pgoff) >
  (afu->config.global_mmio_size >> PAGE_SHIFT))
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 vma->vm_ops = &global_mmio_vmops;
 vma->vm_private_data = afu;
 return 0;
}
