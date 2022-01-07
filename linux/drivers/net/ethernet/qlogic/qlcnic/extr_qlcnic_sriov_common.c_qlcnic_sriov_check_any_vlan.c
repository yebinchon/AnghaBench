
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_vf_info {int vlan_list_lock; scalar_t__ num_vlan; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool qlcnic_sriov_check_any_vlan(struct qlcnic_vf_info *vf)
{
 bool err = 0;

 spin_lock_bh(&vf->vlan_list_lock);

 if (vf->num_vlan)
  err = 1;

 spin_unlock_bh(&vf->vlan_list_lock);
 return err;
}
