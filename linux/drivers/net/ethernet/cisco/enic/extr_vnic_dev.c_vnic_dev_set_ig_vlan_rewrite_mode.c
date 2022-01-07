
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_IG_VLAN_REWRITE_MODE ;
 scalar_t__ vnic_dev_capable (struct vnic_dev*,int ) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_set_ig_vlan_rewrite_mode(struct vnic_dev *vdev,
 u8 ig_vlan_rewrite_mode)
{
 u64 a0 = ig_vlan_rewrite_mode, a1 = 0;
 int wait = 1000;

 if (vnic_dev_capable(vdev, CMD_IG_VLAN_REWRITE_MODE))
  return vnic_dev_cmd(vdev, CMD_IG_VLAN_REWRITE_MODE,
    &a0, &a1, wait);
 else
  return 0;
}
