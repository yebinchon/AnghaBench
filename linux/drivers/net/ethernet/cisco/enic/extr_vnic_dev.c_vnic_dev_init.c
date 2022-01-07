
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vnic_dev {int dummy; } ;


 int CMD_ADDR_ADD ;
 int CMD_GET_MAC_ADDR ;
 int CMD_INIT ;
 int CMD_INITF_DEFAULT_MAC ;
 int CMD_INIT_v1 ;
 scalar_t__ vnic_dev_capable (struct vnic_dev*,int ) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

int vnic_dev_init(struct vnic_dev *vdev, int arg)
{
 u64 a0 = (u32)arg, a1 = 0;
 int wait = 1000;
 int r = 0;

 if (vnic_dev_capable(vdev, CMD_INIT))
  r = vnic_dev_cmd(vdev, CMD_INIT, &a0, &a1, wait);
 else {
  vnic_dev_cmd(vdev, CMD_INIT_v1, &a0, &a1, wait);
  if (a0 & CMD_INITF_DEFAULT_MAC) {



   vnic_dev_cmd(vdev, CMD_GET_MAC_ADDR, &a0, &a1, wait);
   vnic_dev_cmd(vdev, CMD_ADDR_ADD, &a0, &a1, wait);
  }
 }
 return r;
}
