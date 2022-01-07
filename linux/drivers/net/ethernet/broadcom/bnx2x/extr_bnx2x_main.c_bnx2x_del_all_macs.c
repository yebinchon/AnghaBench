
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {int (* delete_all ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int,unsigned long*) ;
 int stub1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;

int bnx2x_del_all_macs(struct bnx2x *bp,
         struct bnx2x_vlan_mac_obj *mac_obj,
         int mac_type, bool wait_for_comp)
{
 int rc;
 unsigned long ramrod_flags = 0, vlan_mac_flags = 0;


 if (wait_for_comp)
  __set_bit(RAMROD_COMP_WAIT, &ramrod_flags);


 __set_bit(mac_type, &vlan_mac_flags);

 rc = mac_obj->delete_all(bp, mac_obj, &vlan_mac_flags, &ramrod_flags);
 if (rc < 0)
  BNX2X_ERR("Failed to delete MACs: %d\n", rc);

 return rc;
}
