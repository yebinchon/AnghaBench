
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qlcnic_vf_info {TYPE_1__* vp; int vlan_list_lock; scalar_t__* sriov_vlans; scalar_t__ num_vlan; } ;
struct qlcnic_sriov {int num_allowed_vlans; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;
struct TYPE_3__ {scalar_t__ vlan_mode; } ;


 scalar_t__ QLC_PVID_MODE ;
 scalar_t__ qlcnic_83xx_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_cfg_vf_def_mac (struct qlcnic_adapter*,struct qlcnic_vf_info*,scalar_t__,int) ;
 scalar_t__ qlcnic_sriov_check_any_vlan (struct qlcnic_vf_info*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qlcnic_83xx_cfg_default_mac_vlan(struct qlcnic_adapter *adapter,
          struct qlcnic_vf_info *vf,
          int opcode)
{
 struct qlcnic_sriov *sriov;
 u16 vlan;
 int i;

 sriov = adapter->ahw->sriov;

 spin_lock_bh(&vf->vlan_list_lock);
 if (vf->num_vlan) {
  for (i = 0; i < sriov->num_allowed_vlans; i++) {
   vlan = vf->sriov_vlans[i];
   if (vlan)
    qlcnic_sriov_cfg_vf_def_mac(adapter, vf, vlan,
           opcode);
  }
 }
 spin_unlock_bh(&vf->vlan_list_lock);

 if (vf->vp->vlan_mode != QLC_PVID_MODE) {
  if (qlcnic_83xx_pf_check(adapter) &&
      qlcnic_sriov_check_any_vlan(vf))
   return;
  qlcnic_sriov_cfg_vf_def_mac(adapter, vf, 0, opcode);
 }
}
