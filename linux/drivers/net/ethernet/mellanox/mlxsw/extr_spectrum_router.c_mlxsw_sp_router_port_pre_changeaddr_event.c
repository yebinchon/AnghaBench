
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_pre_changeaddr_info {int dev_addr; int info; } ;
struct mlxsw_sp_rif {int dev; int mlxsw_sp; } ;


 int mlxsw_sp_router_port_check_rif_addr (int ,int ,int ,struct netlink_ext_ack*) ;
 struct netlink_ext_ack* netdev_notifier_info_to_extack (int *) ;

__attribute__((used)) static int mlxsw_sp_router_port_pre_changeaddr_event(struct mlxsw_sp_rif *rif,
       struct netdev_notifier_pre_changeaddr_info *info)
{
 struct netlink_ext_ack *extack;

 extack = netdev_notifier_info_to_extack(&info->info);
 return mlxsw_sp_router_port_check_rif_addr(rif->mlxsw_sp, rif->dev,
         info->dev_addr, extack);
}
