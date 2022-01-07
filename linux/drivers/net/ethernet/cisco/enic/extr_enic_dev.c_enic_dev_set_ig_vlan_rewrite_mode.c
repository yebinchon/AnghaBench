
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int devcmd_lock; int vdev; } ;


 int IG_VLAN_REWRITE_MODE_PRIORITY_TAG_DEFAULT_VLAN ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_set_ig_vlan_rewrite_mode (int ,int ) ;

int enic_dev_set_ig_vlan_rewrite_mode(struct enic *enic)
{
 int err;

 spin_lock_bh(&enic->devcmd_lock);
 err = vnic_dev_set_ig_vlan_rewrite_mode(enic->vdev,
  IG_VLAN_REWRITE_MODE_PRIORITY_TAG_DEFAULT_VLAN);
 spin_unlock_bh(&enic->devcmd_lock);

 return err;
}
