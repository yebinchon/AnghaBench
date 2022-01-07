
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {scalar_t__ local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_acl_rule_info {int act_block; } ;
struct mlxsw_sp {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int mlxsw_afa_block_append_fwd (int ,scalar_t__,int,struct netlink_ext_ack*) ;
 int mlxsw_sp_port_dev_check (struct net_device*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

int mlxsw_sp_acl_rulei_act_fwd(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_rule_info *rulei,
          struct net_device *out_dev,
          struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_port *mlxsw_sp_port;
 u8 local_port;
 bool in_port;

 if (out_dev) {
  if (!mlxsw_sp_port_dev_check(out_dev)) {
   NL_SET_ERR_MSG_MOD(extack, "Invalid output device");
   return -EINVAL;
  }
  mlxsw_sp_port = netdev_priv(out_dev);
  if (mlxsw_sp_port->mlxsw_sp != mlxsw_sp) {
   NL_SET_ERR_MSG_MOD(extack, "Invalid output device");
   return -EINVAL;
  }
  local_port = mlxsw_sp_port->local_port;
  in_port = 0;
 } else {



  local_port = 0;
  in_port = 1;
 }
 return mlxsw_afa_block_append_fwd(rulei->act_block,
       local_port, in_port, extack);
}
