
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; int vlan; int qos; int spoofchk; int linkstate; int mac; scalar_t__ min_tx_rate; int max_tx_rate; } ;
struct be_vf_cfg {int vlan_tag; int spoofchk; int plink_tracking; int mac_addr; int tx_rate; } ;
struct be_adapter {int num_vfs; struct be_vf_cfg* vf_cfg; } ;


 int EINVAL ;
 int EPERM ;
 int ETH_ALEN ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int memcpy (int *,int ,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_get_vf_config(struct net_device *netdev, int vf,
       struct ifla_vf_info *vi)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];

 if (!sriov_enabled(adapter))
  return -EPERM;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 vi->vf = vf;
 vi->max_tx_rate = vf_cfg->tx_rate;
 vi->min_tx_rate = 0;
 vi->vlan = vf_cfg->vlan_tag & VLAN_VID_MASK;
 vi->qos = vf_cfg->vlan_tag >> VLAN_PRIO_SHIFT;
 memcpy(&vi->mac, vf_cfg->mac_addr, ETH_ALEN);
 vi->linkstate = adapter->vf_cfg[vf].plink_tracking;
 vi->spoofchk = adapter->vf_cfg[vf].spoofchk;

 return 0;
}
