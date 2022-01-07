
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ is_vlan_dev (struct net_device*) ;
 int mlxsw_sp_inetaddr_bridge_event (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ;
 int mlxsw_sp_inetaddr_lag_event (struct net_device*,unsigned long,struct netlink_ext_ack*) ;
 int mlxsw_sp_inetaddr_macvlan_event (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ;
 int mlxsw_sp_inetaddr_port_event (struct net_device*,unsigned long,struct netlink_ext_ack*) ;
 int mlxsw_sp_inetaddr_vlan_event (struct mlxsw_sp*,struct net_device*,unsigned long,struct netlink_ext_ack*) ;
 scalar_t__ mlxsw_sp_port_dev_check (struct net_device*) ;
 scalar_t__ netif_is_bridge_master (struct net_device*) ;
 scalar_t__ netif_is_lag_master (struct net_device*) ;
 scalar_t__ netif_is_macvlan (struct net_device*) ;

__attribute__((used)) static int __mlxsw_sp_inetaddr_event(struct mlxsw_sp *mlxsw_sp,
         struct net_device *dev,
         unsigned long event,
         struct netlink_ext_ack *extack)
{
 if (mlxsw_sp_port_dev_check(dev))
  return mlxsw_sp_inetaddr_port_event(dev, event, extack);
 else if (netif_is_lag_master(dev))
  return mlxsw_sp_inetaddr_lag_event(dev, event, extack);
 else if (netif_is_bridge_master(dev))
  return mlxsw_sp_inetaddr_bridge_event(mlxsw_sp, dev, event,
            extack);
 else if (is_vlan_dev(dev))
  return mlxsw_sp_inetaddr_vlan_event(mlxsw_sp, dev, event,
          extack);
 else if (netif_is_macvlan(dev))
  return mlxsw_sp_inetaddr_macvlan_event(mlxsw_sp, dev, event,
             extack);
 else
  return 0;
}
