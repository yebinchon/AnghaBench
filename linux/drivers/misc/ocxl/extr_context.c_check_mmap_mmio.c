
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; } ;
struct ocxl_context {TYPE_2__* afu; } ;
struct TYPE_3__ {int pp_mmio_stride; } ;
struct TYPE_4__ {TYPE_1__ config; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int check_mmap_mmio(struct ocxl_context *ctx,
   struct vm_area_struct *vma)
{
 if ((vma_pages(vma) + vma->vm_pgoff) >
  (ctx->afu->config.pp_mmio_stride >> PAGE_SHIFT))
  return -EINVAL;
 return 0;
}
