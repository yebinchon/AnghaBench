
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_vlan_mac_obj {int (* delete_all ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct bnx2x {TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct bnx2x_vlan_mac_obj vlan_obj; } ;


 int BNX2X_VLAN ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_clear_vlan_info (struct bnx2x*) ;
 int stub1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;

__attribute__((used)) static int bnx2x_del_all_vlans(struct bnx2x *bp)
{
 struct bnx2x_vlan_mac_obj *vlan_obj = &bp->sp_objs[0].vlan_obj;
 unsigned long ramrod_flags = 0, vlan_flags = 0;
 int rc;

 __set_bit(RAMROD_COMP_WAIT, &ramrod_flags);
 __set_bit(BNX2X_VLAN, &vlan_flags);
 rc = vlan_obj->delete_all(bp, vlan_obj, &vlan_flags, &ramrod_flags);
 if (rc)
  return rc;

 bnx2x_clear_vlan_info(bp);

 return 0;
}
