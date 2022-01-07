
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* max_usec; void* div; void* mul; } ;
struct vnic_dev {int (* devcmd_rtn ) (struct vnic_dev*,int ,int) ;scalar_t__* args; TYPE_1__ intr_coal_timer_info; } ;


 int CMD_INTR_COAL_CONVERT ;
 int ERR_ECMDUNKNOWN ;
 int memset (scalar_t__*,int ,int) ;
 int stub1 (struct vnic_dev*,int ,int) ;
 int vdev_netwarn (struct vnic_dev*,char*) ;
 scalar_t__ vnic_dev_capable (struct vnic_dev*,int ) ;
 int vnic_dev_intr_coal_timer_info_default (struct vnic_dev*) ;

int vnic_dev_intr_coal_timer_info(struct vnic_dev *vdev)
{
 int wait = 1000;
 int err;

 memset(vdev->args, 0, sizeof(vdev->args));

 if (vnic_dev_capable(vdev, CMD_INTR_COAL_CONVERT))
  err = vdev->devcmd_rtn(vdev, CMD_INTR_COAL_CONVERT, wait);
 else
  err = ERR_ECMDUNKNOWN;




 if ((err == ERR_ECMDUNKNOWN) ||
  (!err && !(vdev->args[0] && vdev->args[1] && vdev->args[2]))) {
  vdev_netwarn(vdev, "Using default conversion factor for interrupt coalesce timer\n");
  vnic_dev_intr_coal_timer_info_default(vdev);
  return 0;
 }

 if (!err) {
  vdev->intr_coal_timer_info.mul = (u32) vdev->args[0];
  vdev->intr_coal_timer_info.div = (u32) vdev->args[1];
  vdev->intr_coal_timer_info.max_usec = (u32) vdev->args[2];
 }

 return err;
}
