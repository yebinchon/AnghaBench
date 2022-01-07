
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {unsigned long saved_ramrod_flags; int head_exe_request; int exe_queue; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,unsigned long) ;
 int bnx2x_exe_queue_step (struct bnx2x*,int *,unsigned long*) ;
 int bnx2x_panic () ;

__attribute__((used)) static void __bnx2x_vlan_mac_h_exec_pending(struct bnx2x *bp,
         struct bnx2x_vlan_mac_obj *o)
{
 int rc;
 unsigned long ramrod_flags = o->saved_ramrod_flags;

 DP(BNX2X_MSG_SP, "vlan_mac_lock execute pending command with ramrod flags %lu\n",
    ramrod_flags);
 o->head_exe_request = 0;
 o->saved_ramrod_flags = 0;
 rc = bnx2x_exe_queue_step(bp, &o->exe_queue, &ramrod_flags);
 if ((rc != 0) && (rc != 1)) {
  BNX2X_ERR("execution of pending commands failed with rc %d\n",
     rc);



 }
}
