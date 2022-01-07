
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_ramrod_params {unsigned long ramrod_flags; struct bnx2x_vlan_mac_obj* vlan_mac_obj; } ;
struct bnx2x_raw_obj {int (* wait_comp ) (struct bnx2x*,struct bnx2x_raw_obj*) ;int (* clear_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_vlan_mac_obj {int exe_queue; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_CONT ;
 int RAMROD_DRV_CLR_ONLY ;
 int RAMROD_EXEC ;
 int __bnx2x_vlan_mac_execute_step (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*) ;
 int bnx2x_exe_queue_empty (int *) ;
 int bnx2x_exe_queue_length (int *) ;
 int bnx2x_vlan_mac_push_new_cmd (struct bnx2x*,struct bnx2x_vlan_mac_ramrod_params*) ;
 int stub1 (struct bnx2x_raw_obj*) ;
 int stub2 (struct bnx2x*,struct bnx2x_raw_obj*) ;
 int test_bit (int ,unsigned long*) ;

int bnx2x_config_vlan_mac(struct bnx2x *bp,
      struct bnx2x_vlan_mac_ramrod_params *p)
{
 int rc = 0;
 struct bnx2x_vlan_mac_obj *o = p->vlan_mac_obj;
 unsigned long *ramrod_flags = &p->ramrod_flags;
 bool cont = test_bit(RAMROD_CONT, ramrod_flags);
 struct bnx2x_raw_obj *raw = &o->raw;




 if (!cont) {
  rc = bnx2x_vlan_mac_push_new_cmd(bp, p);
  if (rc)
   return rc;
 }




 if (!bnx2x_exe_queue_empty(&o->exe_queue))
  rc = 1;

 if (test_bit(RAMROD_DRV_CLR_ONLY, ramrod_flags)) {
  DP(BNX2X_MSG_SP, "RAMROD_DRV_CLR_ONLY requested: clearing a pending bit.\n");
  raw->clear_pending(raw);
 }


 if (cont || test_bit(RAMROD_EXEC, ramrod_flags) ||
     test_bit(RAMROD_COMP_WAIT, ramrod_flags)) {
  rc = __bnx2x_vlan_mac_execute_step(bp, p->vlan_mac_obj,
         &p->ramrod_flags);
  if (rc < 0)
   return rc;
 }




 if (test_bit(RAMROD_COMP_WAIT, &p->ramrod_flags)) {



  int max_iterations = bnx2x_exe_queue_length(&o->exe_queue) + 1;

  while (!bnx2x_exe_queue_empty(&o->exe_queue) &&
         max_iterations--) {


   rc = raw->wait_comp(bp, raw);
   if (rc)
    return rc;


   rc = __bnx2x_vlan_mac_execute_step(bp,
          p->vlan_mac_obj,
          &p->ramrod_flags);
   if (rc < 0)
    return rc;
  }

  return 0;
 }

 return rc;
}
