
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int vlan; } ;
struct TYPE_5__ {TYPE_1__ vlan; } ;
struct TYPE_6__ {int cmd; int vlan_mac_flags; TYPE_2__ u; } ;
struct bnx2x_vlan_mac_ramrod_params {unsigned long ramrod_flags; TYPE_3__ user_req; struct bnx2x_vlan_mac_obj* vlan_mac_obj; } ;
struct bnx2x_vlan_mac_obj {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef int ramrod_param ;


 int BNX2X_ERR (char*,char*) ;
 int BNX2X_MSG_SP ;
 int BNX2X_VLAN ;
 int BNX2X_VLAN_MAC_ADD ;
 int BNX2X_VLAN_MAC_DEL ;
 int DP (int ,char*,int) ;
 int EEXIST ;
 int RAMROD_CONT ;
 int __set_bit (int ,int *) ;
 int bnx2x_config_vlan_mac (struct bnx2x*,struct bnx2x_vlan_mac_ramrod_params*) ;
 int memset (struct bnx2x_vlan_mac_ramrod_params*,int ,int) ;
 int test_bit (int ,unsigned long*) ;

int bnx2x_set_vlan_one(struct bnx2x *bp, u16 vlan,
         struct bnx2x_vlan_mac_obj *obj, bool set,
         unsigned long *ramrod_flags)
{
 int rc;
 struct bnx2x_vlan_mac_ramrod_params ramrod_param;

 memset(&ramrod_param, 0, sizeof(ramrod_param));


 ramrod_param.vlan_mac_obj = obj;
 ramrod_param.ramrod_flags = *ramrod_flags;


 if (!test_bit(RAMROD_CONT, ramrod_flags)) {
  ramrod_param.user_req.u.vlan.vlan = vlan;
  __set_bit(BNX2X_VLAN, &ramrod_param.user_req.vlan_mac_flags);

  if (set)
   ramrod_param.user_req.cmd = BNX2X_VLAN_MAC_ADD;
  else
   ramrod_param.user_req.cmd = BNX2X_VLAN_MAC_DEL;
 }

 rc = bnx2x_config_vlan_mac(bp, &ramrod_param);

 if (rc == -EEXIST) {

  DP(BNX2X_MSG_SP, "Failed to schedule ADD operations: %d\n", rc);
  rc = 0;
 } else if (rc < 0) {
  BNX2X_ERR("%s VLAN failed\n", (set ? "Set" : "Del"));
 }

 return rc;
}
