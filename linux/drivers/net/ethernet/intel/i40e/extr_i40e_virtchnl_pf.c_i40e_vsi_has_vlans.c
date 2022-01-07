
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pvid; } ;
struct i40e_vsi {int mac_filter_hash_lock; TYPE_1__ info; } ;


 int i40e_is_vsi_in_vlan (struct i40e_vsi*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool i40e_vsi_has_vlans(struct i40e_vsi *vsi)
{
 bool have_vlans;




 if (vsi->info.pvid)
  return 0;




 spin_lock_bh(&vsi->mac_filter_hash_lock);
 have_vlans = i40e_is_vsi_in_vlan(vsi);
 spin_unlock_bh(&vsi->mac_filter_hash_lock);

 return have_vlans;
}
