
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef int u32 ;
struct vnic_dev {int* args; int proxy_index; int (* devcmd_rtn ) (struct vnic_dev*,int,int) ;} ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 int CMD_CAPABILITY ;
 int ERR_ECMDUNKNOWN ;
 int STAT_ERROR ;
 int _CMD_N (int) ;
 int memset (int*,int ,int) ;
 int stub1 (struct vnic_dev*,int,int) ;
 int vdev_neterr (struct vnic_dev*,char*,int,int ) ;

__attribute__((used)) static int vnic_dev_cmd_proxy(struct vnic_dev *vdev,
 enum vnic_devcmd_cmd proxy_cmd, enum vnic_devcmd_cmd cmd,
 u64 *a0, u64 *a1, int wait)
{
 u32 status;
 int err;

 memset(vdev->args, 0, sizeof(vdev->args));

 vdev->args[0] = vdev->proxy_index;
 vdev->args[1] = cmd;
 vdev->args[2] = *a0;
 vdev->args[3] = *a1;

 err = vdev->devcmd_rtn(vdev, proxy_cmd, wait);
 if (err)
  return err;

 status = (u32)vdev->args[0];
 if (status & STAT_ERROR) {
  err = (int)vdev->args[1];
  if (err != ERR_ECMDUNKNOWN ||
      cmd != CMD_CAPABILITY)
   vdev_neterr(vdev, "Error %d proxy devcmd %d\n",
        err, _CMD_N(cmd));
  return err;
 }

 *a0 = vdev->args[1];
 *a1 = vdev->args[2];

 return 0;
}
