
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct be_vf_cfg {int vlan_tag; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EPERM ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int VLAN_PRIO_SHIFT ;
 int be_clear_vf_tvt (struct be_adapter*,int) ;
 int be_cmd_status (int) ;
 int be_set_vf_tvt (struct be_adapter*,int,int) ;
 int dev_err (int *,char*,int,int,int) ;
 scalar_t__ htons (int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_set_vf_vlan(struct net_device *netdev, int vf, u16 vlan, u8 qos,
     __be16 vlan_proto)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
 int status;

 if (!sriov_enabled(adapter))
  return -EPERM;

 if (vf >= adapter->num_vfs || vlan > 4095 || qos > 7)
  return -EINVAL;

 if (vlan_proto != htons(ETH_P_8021Q))
  return -EPROTONOSUPPORT;

 if (vlan || qos) {
  vlan |= qos << VLAN_PRIO_SHIFT;
  status = be_set_vf_tvt(adapter, vf, vlan);
 } else {
  status = be_clear_vf_tvt(adapter, vf);
 }

 if (status) {
  dev_err(&adapter->pdev->dev,
   "VLAN %d config on VF %d failed : %#x\n", vlan, vf,
   status);
  return be_cmd_status(status);
 }

 vf_cfg->vlan_tag = vlan;
 return 0;
}
