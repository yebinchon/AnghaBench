
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int * ethtool_ops; int watchdog_timeo; } ;
struct napi_struct {int dummy; } ;


 int GELIC_NET_WATCHDOG_TIMEOUT ;
 int NAPI_POLL_WEIGHT ;
 int gelic_ether_ethtool_ops ;
 int gelic_net_poll ;
 int gelic_netdevice_ops ;
 int netif_napi_add (struct net_device*,struct napi_struct*,int ,int ) ;

__attribute__((used)) static void gelic_ether_setup_netdev_ops(struct net_device *netdev,
      struct napi_struct *napi)
{
 netdev->watchdog_timeo = GELIC_NET_WATCHDOG_TIMEOUT;

 netif_napi_add(netdev, napi, gelic_net_poll, NAPI_POLL_WEIGHT);
 netdev->ethtool_ops = &gelic_ether_ethtool_ops;
 netdev->netdev_ops = &gelic_netdevice_ops;
}
