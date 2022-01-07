
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vma_pvt {int ref; int ep; } ;
struct vm_area_struct {int vm_end; int vm_start; struct vma_pvt* vm_private_data; } ;
struct TYPE_3__ {int this_device; } ;
struct TYPE_4__ {TYPE_1__ mdev; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 int kref_get (int *) ;
 TYPE_2__ scif_info ;
 int scif_insert_vma (int ,struct vm_area_struct*) ;

__attribute__((used)) static void scif_vma_open(struct vm_area_struct *vma)
{
 struct vma_pvt *vmapvt = vma->vm_private_data;

 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI vma open: vma_start 0x%lx vma_end 0x%lx\n",
  vma->vm_start, vma->vm_end);
 scif_insert_vma(vmapvt->ep, vma);
 kref_get(&vmapvt->ref);
}
