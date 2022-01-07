
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int eg_acl_block; int ing_acl_block; int mall_tc_list; } ;


 int EINVAL ;
 int list_empty (int *) ;
 int mlxsw_sp_acl_block_disable_dec (int ) ;
 int mlxsw_sp_acl_block_disable_inc (int ) ;
 scalar_t__ mlxsw_sp_acl_block_rule_count (int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_feature_hw_tc(struct net_device *dev, bool enable)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 if (!enable) {
  if (mlxsw_sp_acl_block_rule_count(mlxsw_sp_port->ing_acl_block) ||
      mlxsw_sp_acl_block_rule_count(mlxsw_sp_port->eg_acl_block) ||
      !list_empty(&mlxsw_sp_port->mall_tc_list)) {
   netdev_err(dev, "Active offloaded tc filters, can't turn hw_tc_offload off\n");
   return -EINVAL;
  }
  mlxsw_sp_acl_block_disable_inc(mlxsw_sp_port->ing_acl_block);
  mlxsw_sp_acl_block_disable_inc(mlxsw_sp_port->eg_acl_block);
 } else {
  mlxsw_sp_acl_block_disable_dec(mlxsw_sp_port->ing_acl_block);
  mlxsw_sp_acl_block_disable_dec(mlxsw_sp_port->eg_acl_block);
 }
 return 0;
}
