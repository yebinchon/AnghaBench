
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int ocelot; } ;
struct netdev_notifier_changeupper_info {int upper_dev; int linking; } ;
struct net_device {int dummy; } ;



 struct ocelot_port* netdev_priv (struct net_device*) ;
 int netif_is_bridge_master (int ) ;
 int netif_is_lag_master (int ) ;
 int ocelot_port_bridge_join (struct ocelot_port*,int ) ;
 int ocelot_port_bridge_leave (struct ocelot_port*,int ) ;
 int ocelot_port_lag_join (struct ocelot_port*,int ) ;
 int ocelot_port_lag_leave (struct ocelot_port*,int ) ;
 int ocelot_vlan_port_apply (int ,struct ocelot_port*) ;

__attribute__((used)) static int ocelot_netdevice_port_event(struct net_device *dev,
           unsigned long event,
           struct netdev_notifier_changeupper_info *info)
{
 struct ocelot_port *ocelot_port = netdev_priv(dev);
 int err = 0;

 switch (event) {
 case 128:
  if (netif_is_bridge_master(info->upper_dev)) {
   if (info->linking)
    err = ocelot_port_bridge_join(ocelot_port,
             info->upper_dev);
   else
    ocelot_port_bridge_leave(ocelot_port,
        info->upper_dev);

   ocelot_vlan_port_apply(ocelot_port->ocelot,
            ocelot_port);
  }
  if (netif_is_lag_master(info->upper_dev)) {
   if (info->linking)
    err = ocelot_port_lag_join(ocelot_port,
          info->upper_dev);
   else
    ocelot_port_lag_leave(ocelot_port,
            info->upper_dev);
  }
  break;
 default:
  break;
 }

 return err;
}
