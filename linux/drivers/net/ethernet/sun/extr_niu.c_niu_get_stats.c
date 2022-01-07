
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct niu {int dummy; } ;
struct net_device {int dummy; } ;


 struct niu* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int niu_get_rx_stats (struct niu*,struct rtnl_link_stats64*) ;
 int niu_get_tx_stats (struct niu*,struct rtnl_link_stats64*) ;

__attribute__((used)) static void niu_get_stats(struct net_device *dev,
     struct rtnl_link_stats64 *stats)
{
 struct niu *np = netdev_priv(dev);

 if (netif_running(dev)) {
  niu_get_rx_stats(np, stats);
  niu_get_tx_stats(np, stats);
 }
}
