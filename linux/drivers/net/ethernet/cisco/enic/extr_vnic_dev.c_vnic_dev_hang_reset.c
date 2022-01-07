
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vnic_dev {int dummy; } ;


 int CMD_HANG_RESET ;
 scalar_t__ vnic_dev_capable (struct vnic_dev*,int ) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;
 int vnic_dev_init (struct vnic_dev*,int ) ;
 int vnic_dev_soft_reset (struct vnic_dev*,int) ;

int vnic_dev_hang_reset(struct vnic_dev *vdev, int arg)
{
 u64 a0 = (u32)arg, a1 = 0;
 int wait = 1000;
 int err;

 if (vnic_dev_capable(vdev, CMD_HANG_RESET)) {
  return vnic_dev_cmd(vdev, CMD_HANG_RESET,
    &a0, &a1, wait);
 } else {
  err = vnic_dev_soft_reset(vdev, arg);
  if (err)
   return err;
  return vnic_dev_init(vdev, 0);
 }
}
