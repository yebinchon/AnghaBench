
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {scalar_t__ rx_pause; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; scalar_t__ autoneg; } ;


 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fm10k_get_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *pause)
{
 struct fm10k_intfc *interface = netdev_priv(dev);


 pause->autoneg = 0;
 pause->tx_pause = 1;

 pause->rx_pause = interface->rx_pause ? 1 : 0;
}
