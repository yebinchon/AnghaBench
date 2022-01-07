
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_HANG_RESET_STATUS ;
 scalar_t__ vnic_dev_capable (struct vnic_dev*,int ) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,scalar_t__*,scalar_t__*,int) ;
 int vnic_dev_soft_reset_done (struct vnic_dev*,int*) ;

int vnic_dev_hang_reset_done(struct vnic_dev *vdev, int *done)
{
 u64 a0 = 0, a1 = 0;
 int wait = 1000;
 int err;

 *done = 0;

 if (vnic_dev_capable(vdev, CMD_HANG_RESET_STATUS)) {
  err = vnic_dev_cmd(vdev, CMD_HANG_RESET_STATUS,
    &a0, &a1, wait);
  if (err)
   return err;
 } else {
  return vnic_dev_soft_reset_done(vdev, done);
 }

 *done = (a0 == 0);

 return 0;
}
