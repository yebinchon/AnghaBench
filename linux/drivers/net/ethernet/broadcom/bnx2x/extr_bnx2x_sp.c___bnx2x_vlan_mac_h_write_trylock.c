
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {scalar_t__ head_reader; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;
 int EBUSY ;

__attribute__((used)) static int __bnx2x_vlan_mac_h_write_trylock(struct bnx2x *bp,
         struct bnx2x_vlan_mac_obj *o)
{
 if (o->head_reader) {
  DP(BNX2X_MSG_SP, "vlan_mac_lock writer - There are readers; Busy\n");
  return -EBUSY;
 }

 DP(BNX2X_MSG_SP, "vlan_mac_lock writer - Taken\n");
 return 0;
}
