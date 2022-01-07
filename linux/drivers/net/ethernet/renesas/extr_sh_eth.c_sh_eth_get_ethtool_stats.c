
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sh_eth_private {int dirty_tx; int dirty_rx; int cur_tx; int cur_rx; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sh_eth_get_ethtool_stats(struct net_device *ndev,
         struct ethtool_stats *stats, u64 *data)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int i = 0;


 data[i++] = mdp->cur_rx;
 data[i++] = mdp->cur_tx;
 data[i++] = mdp->dirty_rx;
 data[i++] = mdp->dirty_tx;
}
