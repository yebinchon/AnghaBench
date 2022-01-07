
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_vf_info {scalar_t__ num_vlan; int vlan_list_lock; } ;
struct qlcnic_sriov {scalar_t__ num_allowed_vlans; } ;


 int EINVAL ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qlcnic_sriov_validate_num_vlans(struct qlcnic_sriov *sriov,
        struct qlcnic_vf_info *vf)
{
 int err = 0;

 spin_lock_bh(&vf->vlan_list_lock);

 if (vf->num_vlan >= sriov->num_allowed_vlans)
  err = -EINVAL;

 spin_unlock_bh(&vf->vlan_list_lock);
 return err;
}
