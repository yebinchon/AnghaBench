
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_CLOSE ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_close(struct vnic_dev *vdev)
{
 u64 a0 = 0, a1 = 0;
 int wait = 1000;
 return vnic_dev_cmd(vdev, CMD_CLOSE, &a0, &a1, wait);
}
