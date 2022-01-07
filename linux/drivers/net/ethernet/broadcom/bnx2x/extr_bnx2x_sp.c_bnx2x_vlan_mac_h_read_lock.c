
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct bnx2x_vlan_mac_obj {TYPE_1__ exe_queue; } ;
struct bnx2x {int dummy; } ;


 int __bnx2x_vlan_mac_h_read_lock (struct bnx2x*,struct bnx2x_vlan_mac_obj*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int bnx2x_vlan_mac_h_read_lock(struct bnx2x *bp,
          struct bnx2x_vlan_mac_obj *o)
{
 int rc;

 spin_lock_bh(&o->exe_queue.lock);
 rc = __bnx2x_vlan_mac_h_read_lock(bp, o);
 spin_unlock_bh(&o->exe_queue.lock);

 return rc;
}
