
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int dummy; } ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 int CMD_STATUS ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

__attribute__((used)) static int vnic_dev_cmd_status(struct vnic_dev *vdev, enum vnic_devcmd_cmd cmd,
 int *status)
{
 u64 a0 = cmd, a1 = 0;
 int wait = 1000;
 int ret;

 ret = vnic_dev_cmd(vdev, CMD_STATUS, &a0, &a1, wait);
 if (!ret)
  *status = (int)a0;

 return ret;
}
