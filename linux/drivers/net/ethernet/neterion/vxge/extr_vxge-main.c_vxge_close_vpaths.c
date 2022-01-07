
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vpaths_open; } ;
struct vxgedev {int no_of_vpath; TYPE_1__ stats; struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int * handle; scalar_t__ is_open; } ;


 int vxge_hw_vpath_close (int *) ;

__attribute__((used)) static void vxge_close_vpaths(struct vxgedev *vdev, int index)
{
 struct vxge_vpath *vpath;
 int i;

 for (i = index; i < vdev->no_of_vpath; i++) {
  vpath = &vdev->vpaths[i];

  if (vpath->handle && vpath->is_open) {
   vxge_hw_vpath_close(vpath->handle);
   vdev->stats.vpaths_open--;
  }
  vpath->is_open = 0;
  vpath->handle = ((void*)0);
 }
}
