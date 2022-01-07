
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vnic_dev {int dummy; } ;


 int CMD_SOFT_RESET ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_soft_reset(struct vnic_dev *vdev, int arg)
{
 u64 a0 = (u32)arg, a1 = 0;
 int wait = 1000;
 return vnic_dev_cmd(vdev, CMD_SOFT_RESET, &a0, &a1, wait);
}
