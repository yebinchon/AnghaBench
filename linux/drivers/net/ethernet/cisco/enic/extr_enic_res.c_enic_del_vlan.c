
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct enic {int vdev; } ;


 int CMD_VLAN_DEL ;
 int dev_err (int ,char*,int) ;
 int enic_get_dev (struct enic*) ;
 int vnic_dev_cmd (int ,int ,int *,int *,int) ;

int enic_del_vlan(struct enic *enic, u16 vlanid)
{
 u64 a0 = vlanid, a1 = 0;
 int wait = 1000;
 int err;

 err = vnic_dev_cmd(enic->vdev, CMD_VLAN_DEL, &a0, &a1, wait);
 if (err)
  dev_err(enic_get_dev(enic), "Can't delete vlan id, %d\n", err);

 return err;
}
