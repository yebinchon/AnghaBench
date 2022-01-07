
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int tx_stats; int rx_stats; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 struct netfront_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xennet_free_netdev(struct net_device *netdev)
{
 struct netfront_info *np = netdev_priv(netdev);

 free_percpu(np->rx_stats);
 free_percpu(np->tx_stats);
 free_netdev(netdev);
}
