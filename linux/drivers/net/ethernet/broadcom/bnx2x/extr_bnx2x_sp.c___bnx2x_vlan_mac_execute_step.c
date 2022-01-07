
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct bnx2x_vlan_mac_obj {TYPE_1__ exe_queue; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;
 int __bnx2x_vlan_mac_h_pend (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long) ;
 int __bnx2x_vlan_mac_h_write_trylock (struct bnx2x*,struct bnx2x_vlan_mac_obj*) ;
 int bnx2x_exe_queue_step (struct bnx2x*,TYPE_1__*,unsigned long*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __bnx2x_vlan_mac_execute_step(struct bnx2x *bp,
      struct bnx2x_vlan_mac_obj *o,
      unsigned long *ramrod_flags)
{
 int rc = 0;

 spin_lock_bh(&o->exe_queue.lock);

 DP(BNX2X_MSG_SP, "vlan_mac_execute_step - trying to take writer lock\n");
 rc = __bnx2x_vlan_mac_h_write_trylock(bp, o);

 if (rc != 0) {
  __bnx2x_vlan_mac_h_pend(bp, o, *ramrod_flags);




  rc = 1;
 } else {
  rc = bnx2x_exe_queue_step(bp, &o->exe_queue, ramrod_flags);
 }
 spin_unlock_bh(&o->exe_queue.lock);

 return rc;
}
