
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxgedev {int no_of_vpath; struct vxge_vpath* vpaths; scalar_t__ intr_cnt; } ;
struct TYPE_4__ {int tx_vector_no; } ;
struct TYPE_3__ {int rx_vector_no; } ;
struct vxge_vpath {int device_id; int handle; TYPE_2__ fifo; TYPE_1__ ring; } ;


 int VXGE_ALARM_MSIX_ID ;
 int VXGE_HW_VPATH_MSIX_ACTIVE ;
 int vxge_alloc_msix (struct vxgedev*) ;
 int vxge_hw_vpath_msix_set (int ,int*,int ) ;

__attribute__((used)) static int vxge_enable_msix(struct vxgedev *vdev)
{

 int i, ret = 0;

 int tim_msix_id[4] = {0, 1, 0, 0};

 vdev->intr_cnt = 0;


 ret = vxge_alloc_msix(vdev);
 if (!ret) {
  for (i = 0; i < vdev->no_of_vpath; i++) {
   struct vxge_vpath *vpath = &vdev->vpaths[i];




   vpath->ring.rx_vector_no = (vpath->device_id *
      VXGE_HW_VPATH_MSIX_ACTIVE) + 1;

   vpath->fifo.tx_vector_no = (vpath->device_id *
      VXGE_HW_VPATH_MSIX_ACTIVE);

   vxge_hw_vpath_msix_set(vpath->handle, tim_msix_id,
            VXGE_ALARM_MSIX_ID);
  }
 }

 return ret;
}
