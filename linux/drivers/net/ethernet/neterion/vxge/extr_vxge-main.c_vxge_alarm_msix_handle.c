
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vxgedev {int no_of_vpath; TYPE_3__* vpaths; int exec_mode; } ;
struct vxge_vpath {TYPE_2__* handle; struct vxgedev* vdev; } ;
typedef int irqreturn_t ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_6__ {int handle; } ;
struct TYPE_5__ {TYPE_1__* vpath; } ;
struct TYPE_4__ {int vp_id; } ;


 int IRQ_HANDLED ;
 int VXGE_ALARM_MSIX_ID ;
 int VXGE_DRIVER_NAME ;
 int VXGE_ERR ;
 int VXGE_HW_OK ;
 int VXGE_HW_VPATH_MSIX_ACTIVE ;
 int vxge_debug_intr (int ,char*,int ,int) ;
 int vxge_hw_vpath_alarm_process (int ,int ) ;
 int vxge_hw_vpath_msix_clear (int ,int) ;
 int vxge_hw_vpath_msix_mask (int ,int) ;
 int vxge_hw_vpath_msix_unmask (int ,int) ;

__attribute__((used)) static irqreturn_t
vxge_alarm_msix_handle(int irq, void *dev_id)
{
 int i;
 enum vxge_hw_status status;
 struct vxge_vpath *vpath = (struct vxge_vpath *)dev_id;
 struct vxgedev *vdev = vpath->vdev;
 int msix_id = (vpath->handle->vpath->vp_id *
  VXGE_HW_VPATH_MSIX_ACTIVE) + VXGE_ALARM_MSIX_ID;

 for (i = 0; i < vdev->no_of_vpath; i++) {




  vxge_hw_vpath_msix_mask(vdev->vpaths[i].handle, msix_id);
  vxge_hw_vpath_msix_clear(vdev->vpaths[i].handle, msix_id);

  status = vxge_hw_vpath_alarm_process(vdev->vpaths[i].handle,
   vdev->exec_mode);
  if (status == VXGE_HW_OK) {
   vxge_hw_vpath_msix_unmask(vdev->vpaths[i].handle,
        msix_id);
   continue;
  }
  vxge_debug_intr(VXGE_ERR,
   "%s: vxge_hw_vpath_alarm_process failed %x ",
   VXGE_DRIVER_NAME, status);
 }
 return IRQ_HANDLED;
}
