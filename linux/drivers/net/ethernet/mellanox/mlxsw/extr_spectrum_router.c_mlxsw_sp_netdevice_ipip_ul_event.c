
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_notifier_info {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int __mlxsw_sp_netdevice_ipip_ul_event (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,struct net_device*,unsigned long,struct netdev_notifier_info*) ;
 int mlxsw_sp_ipip_demote_tunnel_by_ul_netdev (struct mlxsw_sp*,struct net_device*) ;
 struct mlxsw_sp_ipip_entry* mlxsw_sp_ipip_entry_find_by_ul_dev (struct mlxsw_sp*,struct net_device*,struct mlxsw_sp_ipip_entry*) ;

int
mlxsw_sp_netdevice_ipip_ul_event(struct mlxsw_sp *mlxsw_sp,
     struct net_device *ul_dev,
     unsigned long event,
     struct netdev_notifier_info *info)
{
 struct mlxsw_sp_ipip_entry *ipip_entry = ((void*)0);
 int err;

 while ((ipip_entry = mlxsw_sp_ipip_entry_find_by_ul_dev(mlxsw_sp,
        ul_dev,
        ipip_entry))) {
  err = __mlxsw_sp_netdevice_ipip_ul_event(mlxsw_sp, ipip_entry,
        ul_dev, event, info);
  if (err) {
   mlxsw_sp_ipip_demote_tunnel_by_ul_netdev(mlxsw_sp,
         ul_dev);
   return err;
  }
 }

 return 0;
}
