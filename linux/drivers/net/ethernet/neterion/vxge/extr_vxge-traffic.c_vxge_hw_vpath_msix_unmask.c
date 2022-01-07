
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct __vxge_hw_vpath_handle {TYPE_1__* vpath; } ;
struct __vxge_hw_device {TYPE_2__* common_reg; } ;
struct TYPE_4__ {int * clear_msix_mask_vect; } ;
struct TYPE_3__ {struct __vxge_hw_device* hldev; } ;


 int __vxge_hw_pio_mem_write32_upper (int ,int *) ;
 scalar_t__ vxge_bVALn (int ,int ,int) ;
 int vxge_mBIT (int) ;

void
vxge_hw_vpath_msix_unmask(struct __vxge_hw_vpath_handle *vp, int msix_id)
{
 struct __vxge_hw_device *hldev = vp->vpath->hldev;
 __vxge_hw_pio_mem_write32_upper(
   (u32)vxge_bVALn(vxge_mBIT(msix_id >> 2), 0, 32),
   &hldev->common_reg->clear_msix_mask_vect[msix_id%4]);
}
