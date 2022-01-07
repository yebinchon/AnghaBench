
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ netif_running (struct net_device*) ;
 int spider_net_open (struct net_device*) ;
 int spider_net_stop (struct net_device*) ;

__attribute__((used)) static int
spider_net_ethtool_nway_reset(struct net_device *netdev)
{
 if (netif_running(netdev)) {
  spider_net_stop(netdev);
  spider_net_open(netdev);
 }
 return 0;
}
