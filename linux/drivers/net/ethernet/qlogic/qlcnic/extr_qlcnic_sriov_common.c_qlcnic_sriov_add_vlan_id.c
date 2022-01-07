
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qlcnic_vf_info {int num_vlan; scalar_t__* sriov_vlans; } ;
struct qlcnic_sriov {int num_allowed_vlans; } ;



void qlcnic_sriov_add_vlan_id(struct qlcnic_sriov *sriov,
         struct qlcnic_vf_info *vf, u16 vlan_id)
{
 int i;

 for (i = 0; i < sriov->num_allowed_vlans; i++) {
  if (!vf->sriov_vlans[i]) {
   vf->sriov_vlans[i] = vlan_id;
   vf->num_vlan++;
   return;
  }
 }
}
