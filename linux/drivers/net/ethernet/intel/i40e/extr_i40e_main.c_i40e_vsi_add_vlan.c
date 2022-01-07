
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ pvid; } ;
struct i40e_vsi {int back; int mac_filter_hash_lock; TYPE_1__ info; } ;


 int EINVAL ;
 int i40e_add_vlan_all_mac (struct i40e_vsi*,int ) ;
 int i40e_service_event_schedule (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int i40e_vsi_add_vlan(struct i40e_vsi *vsi, u16 vid)
{
 int err;

 if (vsi->info.pvid)
  return -EINVAL;
 if (!vid)
  return 0;


 spin_lock_bh(&vsi->mac_filter_hash_lock);
 err = i40e_add_vlan_all_mac(vsi, vid);
 spin_unlock_bh(&vsi->mac_filter_hash_lock);
 if (err)
  return err;




 i40e_service_event_schedule(vsi->back);
 return 0;
}
