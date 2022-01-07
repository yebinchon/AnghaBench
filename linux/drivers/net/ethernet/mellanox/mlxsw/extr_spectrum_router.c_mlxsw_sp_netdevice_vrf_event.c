
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_changeupper_info {int info; int linking; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;




 struct mlxsw_sp* mlxsw_sp_lower_get (struct net_device*) ;
 int mlxsw_sp_port_vrf_join (struct mlxsw_sp*,struct net_device*,struct netlink_ext_ack*) ;
 int mlxsw_sp_port_vrf_leave (struct mlxsw_sp*,struct net_device*) ;
 struct netlink_ext_ack* netdev_notifier_info_to_extack (int *) ;
 scalar_t__ netif_is_macvlan (struct net_device*) ;

int mlxsw_sp_netdevice_vrf_event(struct net_device *l3_dev, unsigned long event,
     struct netdev_notifier_changeupper_info *info)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_lower_get(l3_dev);
 int err = 0;




 if (!mlxsw_sp || netif_is_macvlan(l3_dev))
  return 0;

 switch (event) {
 case 128:
  return 0;
 case 129:
  if (info->linking) {
   struct netlink_ext_ack *extack;

   extack = netdev_notifier_info_to_extack(&info->info);
   err = mlxsw_sp_port_vrf_join(mlxsw_sp, l3_dev, extack);
  } else {
   mlxsw_sp_port_vrf_leave(mlxsw_sp, l3_dev);
  }
  break;
 }

 return err;
}
