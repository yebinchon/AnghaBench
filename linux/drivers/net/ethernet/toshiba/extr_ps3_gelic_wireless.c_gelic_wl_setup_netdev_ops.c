
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * wireless_handlers; int * wireless_data; int * netdev_ops; int * ethtool_ops; int watchdog_timeo; } ;
struct gelic_wl_info {int wireless_data; } ;


 int BUG_ON (int) ;
 int GELIC_NET_WATCHDOG_TIMEOUT ;
 int gelic_wl_ethtool_ops ;
 int gelic_wl_netdevice_ops ;
 int gelic_wl_wext_handler_def ;
 int netdev_priv (struct net_device*) ;
 struct gelic_wl_info* port_wl (int ) ;

__attribute__((used)) static void gelic_wl_setup_netdev_ops(struct net_device *netdev)
{
 struct gelic_wl_info *wl;
 wl = port_wl(netdev_priv(netdev));
 BUG_ON(!wl);
 netdev->watchdog_timeo = GELIC_NET_WATCHDOG_TIMEOUT;

 netdev->ethtool_ops = &gelic_wl_ethtool_ops;
 netdev->netdev_ops = &gelic_wl_netdevice_ops;
 netdev->wireless_data = &wl->wireless_data;
 netdev->wireless_handlers = &gelic_wl_wext_handler_def;
}
