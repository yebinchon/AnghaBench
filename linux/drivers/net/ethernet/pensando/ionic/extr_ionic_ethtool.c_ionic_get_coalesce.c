
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ionic_lif {int rx_coalesce_usecs; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int tx_coalesce_usecs; } ;


 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_get_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *coalesce)
{
 struct ionic_lif *lif = netdev_priv(netdev);


 coalesce->tx_coalesce_usecs = lif->rx_coalesce_usecs;
 coalesce->rx_coalesce_usecs = lif->rx_coalesce_usecs;

 return 0;
}
