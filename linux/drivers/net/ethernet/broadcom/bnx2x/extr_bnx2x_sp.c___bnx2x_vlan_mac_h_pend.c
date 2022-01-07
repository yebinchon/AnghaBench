
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {int head_exe_request; unsigned long saved_ramrod_flags; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,unsigned long) ;

__attribute__((used)) static void __bnx2x_vlan_mac_h_pend(struct bnx2x *bp,
        struct bnx2x_vlan_mac_obj *o,
        unsigned long ramrod_flags)
{
 o->head_exe_request = 1;
 o->saved_ramrod_flags = ramrod_flags;
 DP(BNX2X_MSG_SP, "Placing pending execution with ramrod flags %lu\n",
    ramrod_flags);
}
