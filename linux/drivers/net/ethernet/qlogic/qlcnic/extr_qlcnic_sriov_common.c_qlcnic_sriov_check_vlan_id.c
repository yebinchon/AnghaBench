
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qlcnic_vf_info {scalar_t__* sriov_vlans; int vlan_list_lock; } ;
struct qlcnic_sriov {int num_allowed_vlans; } ;


 int EINVAL ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qlcnic_sriov_check_vlan_id(struct qlcnic_sriov *sriov,
          struct qlcnic_vf_info *vf, u16 vlan_id)
{
 int i, err = -EINVAL;

 if (!vf->sriov_vlans)
  return err;

 spin_lock_bh(&vf->vlan_list_lock);

 for (i = 0; i < sriov->num_allowed_vlans; i++) {
  if (vf->sriov_vlans[i] == vlan_id) {
   err = 0;
   break;
  }
 }

 spin_unlock_bh(&vf->vlan_list_lock);
 return err;
}
