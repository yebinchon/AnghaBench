
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int proxy; int args; } ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 int CMD_PROXY_BY_BDF ;
 int CMD_PROXY_BY_INDEX ;



 int memset (int ,int ,int) ;
 int vnic_dev_cmd_no_proxy (struct vnic_dev*,int,int *,int *,int) ;
 int vnic_dev_cmd_proxy (struct vnic_dev*,int ,int,int *,int *,int) ;

int vnic_dev_cmd(struct vnic_dev *vdev, enum vnic_devcmd_cmd cmd,
 u64 *a0, u64 *a1, int wait)
{
 memset(vdev->args, 0, sizeof(vdev->args));

 switch (vdev->proxy) {
 case 129:
  return vnic_dev_cmd_proxy(vdev, CMD_PROXY_BY_INDEX, cmd,
    a0, a1, wait);
 case 130:
  return vnic_dev_cmd_proxy(vdev, CMD_PROXY_BY_BDF, cmd,
    a0, a1, wait);
 case 128:
 default:
  return vnic_dev_cmd_no_proxy(vdev, cmd, a0, a1, wait);
 }
}
