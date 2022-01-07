
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ intr_type; } ;
struct vxgedev {int no_of_vpath; int vp_reset_timer; int devh; TYPE_1__ config; int vp_reset; } ;
struct timer_list {int dummy; } ;


 int HZ ;
 scalar_t__ MSI_X ;
 struct vxgedev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ test_bit (int,int *) ;
 struct vxgedev* vdev ;
 int vp_reset_timer ;
 int vxge_hw_device_flush_io (int ) ;
 int vxge_hw_device_unmask_all (int ) ;
 int vxge_reset_vpath (struct vxgedev*,int) ;

__attribute__((used)) static void vxge_poll_vp_reset(struct timer_list *t)
{
 struct vxgedev *vdev = from_timer(vdev, t, vp_reset_timer);
 int i, j = 0;

 for (i = 0; i < vdev->no_of_vpath; i++) {
  if (test_bit(i, &vdev->vp_reset)) {
   vxge_reset_vpath(vdev, i);
   j++;
  }
 }
 if (j && (vdev->config.intr_type != MSI_X)) {
  vxge_hw_device_unmask_all(vdev->devh);
  vxge_hw_device_flush_io(vdev->devh);
 }

 mod_timer(&vdev->vp_reset_timer, jiffies + HZ / 2);
}
