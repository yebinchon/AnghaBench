
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct qlcnic_vf_info {int vlan_list_lock; scalar_t__* sriov_vlans; } ;
struct qlcnic_sriov {int num_allowed_vlans; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
typedef enum qlcnic_mac_type { ____Placeholder_qlcnic_mac_type } qlcnic_mac_type ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;


 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;
 int qlcnic_nic_add_mac (struct qlcnic_adapter*,int const*,scalar_t__,int) ;
 int qlcnic_sriov_check_any_vlan (struct qlcnic_vf_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qlcnic_vf_add_mc_list(struct net_device *netdev, const u8 *mac,
      enum qlcnic_mac_type mac_type)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vf_info *vf;
 u16 vlan_id;
 int i;

 vf = &adapter->ahw->sriov->vf_info[0];

 if (!qlcnic_sriov_check_any_vlan(vf)) {
  qlcnic_nic_add_mac(adapter, mac, 0, mac_type);
 } else {
  spin_lock(&vf->vlan_list_lock);
  for (i = 0; i < sriov->num_allowed_vlans; i++) {
   vlan_id = vf->sriov_vlans[i];
   if (vlan_id)
    qlcnic_nic_add_mac(adapter, mac, vlan_id,
         mac_type);
  }
  spin_unlock(&vf->vlan_list_lock);
  if (qlcnic_84xx_check(adapter))
   qlcnic_nic_add_mac(adapter, mac, 0, mac_type);
 }
}
