
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {scalar_t__ head_exe_request; int head_reader; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;
 int DP (int ,char*,...) ;
 int __bnx2x_vlan_mac_h_write_unlock (struct bnx2x*,struct bnx2x_vlan_mac_obj*) ;
 int bnx2x_panic () ;

__attribute__((used)) static void __bnx2x_vlan_mac_h_read_unlock(struct bnx2x *bp,
       struct bnx2x_vlan_mac_obj *o)
{
 if (!o->head_reader) {
  BNX2X_ERR("Need to release vlan mac reader lock, but lock isn't taken\n");



 } else {
  o->head_reader--;
  DP(BNX2X_MSG_SP, "vlan_mac_lock - decreased readers to %d\n",
     o->head_reader);
 }




 if (!o->head_reader && o->head_exe_request) {
  DP(BNX2X_MSG_SP, "vlan_mac_lock - reader release encountered a pending request\n");


  __bnx2x_vlan_mac_h_write_unlock(bp, o);
 }
}
