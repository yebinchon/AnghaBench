
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_acl_rule_info {int act_block; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 scalar_t__ FLOW_ACTION_VLAN_MANGLE ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int dev_err (int ,char*,...) ;
 int mlxsw_afa_block_append_vlan_modify (int ,int,int,int,struct netlink_ext_ack*) ;

int mlxsw_sp_acl_rulei_act_vlan(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_acl_rule_info *rulei,
    u32 action, u16 vid, u16 proto, u8 prio,
    struct netlink_ext_ack *extack)
{
 u8 ethertype;

 if (action == FLOW_ACTION_VLAN_MANGLE) {
  switch (proto) {
  case 128:
   ethertype = 0;
   break;
  case 129:
   ethertype = 1;
   break;
  default:
   NL_SET_ERR_MSG_MOD(extack, "Unsupported VLAN protocol");
   dev_err(mlxsw_sp->bus_info->dev, "Unsupported VLAN protocol %#04x\n",
    proto);
   return -EINVAL;
  }

  return mlxsw_afa_block_append_vlan_modify(rulei->act_block,
         vid, prio, ethertype,
         extack);
 } else {
  NL_SET_ERR_MSG_MOD(extack, "Unsupported VLAN action");
  dev_err(mlxsw_sp->bus_info->dev, "Unsupported VLAN action\n");
  return -EINVAL;
 }
}
