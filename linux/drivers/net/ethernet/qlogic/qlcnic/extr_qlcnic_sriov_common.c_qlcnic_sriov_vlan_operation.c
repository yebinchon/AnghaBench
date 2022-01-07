
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_vf_info {int vlan_list_lock; int sriov_vlans; struct qlcnic_adapter* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_adapter {int netdev; TYPE_1__* ahw; } ;
typedef enum qlcnic_vlan_operations { ____Placeholder_qlcnic_vlan_operations } qlcnic_vlan_operations ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;




 int netdev_err (int ,char*) ;
 int qlcnic_sriov_add_vlan_id (struct qlcnic_sriov*,struct qlcnic_vf_info*,int ) ;
 int qlcnic_sriov_del_vlan_id (struct qlcnic_sriov*,struct qlcnic_vf_info*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qlcnic_sriov_vlan_operation(struct qlcnic_vf_info *vf, u16 vlan_id,
     enum qlcnic_vlan_operations opcode)
{
 struct qlcnic_adapter *adapter = vf->adapter;
 struct qlcnic_sriov *sriov;

 sriov = adapter->ahw->sriov;

 if (!vf->sriov_vlans)
  return;

 spin_lock_bh(&vf->vlan_list_lock);

 switch (opcode) {
 case 129:
  qlcnic_sriov_add_vlan_id(sriov, vf, vlan_id);
  break;
 case 128:
  qlcnic_sriov_del_vlan_id(sriov, vf, vlan_id);
  break;
 default:
  netdev_err(adapter->netdev, "Invalid VLAN operation\n");
 }

 spin_unlock_bh(&vf->vlan_list_lock);
 return;
}
