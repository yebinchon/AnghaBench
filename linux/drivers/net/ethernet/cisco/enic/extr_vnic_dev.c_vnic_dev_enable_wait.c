
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_ENABLE ;
 int CMD_ENABLE_WAIT ;
 scalar_t__ vnic_dev_capable (struct vnic_dev*,int ) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_enable_wait(struct vnic_dev *vdev)
{
 u64 a0 = 0, a1 = 0;
 int wait = 1000;

 if (vnic_dev_capable(vdev, CMD_ENABLE_WAIT))
  return vnic_dev_cmd(vdev, CMD_ENABLE_WAIT, &a0, &a1, wait);
 else
  return vnic_dev_cmd(vdev, CMD_ENABLE, &a0, &a1, wait);
}
