
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_ENABLE2 ;
 int CMD_ENABLE2_ACTIVE ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_enable2(struct vnic_dev *vdev, int active)
{
 u64 a0, a1 = 0;
 int wait = 1000;

 a0 = (active ? CMD_ENABLE2_ACTIVE : 0);

 return vnic_dev_cmd(vdev, CMD_ENABLE2, &a0, &a1, wait);
}
