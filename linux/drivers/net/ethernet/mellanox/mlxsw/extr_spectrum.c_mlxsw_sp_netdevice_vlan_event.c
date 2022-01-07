
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int mlxsw_sp_netdevice_bridge_vlan_event (struct net_device*,struct net_device*,unsigned long,void*,int ) ;
 int mlxsw_sp_netdevice_lag_port_vlan_event (struct net_device*,struct net_device*,unsigned long,void*,int ) ;
 int mlxsw_sp_netdevice_port_vlan_event (struct net_device*,struct net_device*,unsigned long,void*,int ) ;
 scalar_t__ mlxsw_sp_port_dev_check (struct net_device*) ;
 scalar_t__ netif_is_bridge_master (struct net_device*) ;
 scalar_t__ netif_is_lag_master (struct net_device*) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;
 int vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_netdevice_vlan_event(struct net_device *vlan_dev,
      unsigned long event, void *ptr)
{
 struct net_device *real_dev = vlan_dev_real_dev(vlan_dev);
 u16 vid = vlan_dev_vlan_id(vlan_dev);

 if (mlxsw_sp_port_dev_check(real_dev))
  return mlxsw_sp_netdevice_port_vlan_event(vlan_dev, real_dev,
         event, ptr, vid);
 else if (netif_is_lag_master(real_dev))
  return mlxsw_sp_netdevice_lag_port_vlan_event(vlan_dev,
             real_dev, event,
             ptr, vid);
 else if (netif_is_bridge_master(real_dev))
  return mlxsw_sp_netdevice_bridge_vlan_event(vlan_dev, real_dev,
           event, ptr, vid);

 return 0;
}
