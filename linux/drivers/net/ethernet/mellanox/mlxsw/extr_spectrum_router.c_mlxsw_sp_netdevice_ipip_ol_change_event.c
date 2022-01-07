
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_ops {int (* ol_netdev_change ) (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,struct netlink_ext_ack*) ;} ;
struct mlxsw_sp_ipip_entry {size_t ipipt; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_ipip_ops** ipip_ops_arr; } ;


 int mlxsw_sp_ipip_entry_demote_tunnel (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;
 struct mlxsw_sp_ipip_entry* mlxsw_sp_ipip_entry_find_by_ol_dev (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_netdevice_ipip_can_offload (struct mlxsw_sp*,struct net_device*,size_t) ;
 int stub1 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,struct netlink_ext_ack*) ;

__attribute__((used)) static int
mlxsw_sp_netdevice_ipip_ol_change_event(struct mlxsw_sp *mlxsw_sp,
     struct net_device *ol_dev,
     struct netlink_ext_ack *extack)
{
 const struct mlxsw_sp_ipip_ops *ipip_ops;
 struct mlxsw_sp_ipip_entry *ipip_entry;
 int err;

 ipip_entry = mlxsw_sp_ipip_entry_find_by_ol_dev(mlxsw_sp, ol_dev);
 if (!ipip_entry)




  return 0;


 if (!mlxsw_sp_netdevice_ipip_can_offload(mlxsw_sp, ol_dev,
       ipip_entry->ipipt)) {
  mlxsw_sp_ipip_entry_demote_tunnel(mlxsw_sp, ipip_entry);
  return 0;
 }

 ipip_ops = mlxsw_sp->router->ipip_ops_arr[ipip_entry->ipipt];
 err = ipip_ops->ol_netdev_change(mlxsw_sp, ipip_entry, extack);
 return err;
}
