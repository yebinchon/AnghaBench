
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;
struct TYPE_2__ {int features; int advertising; scalar_t__ duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;
struct emac_instance {int link_lock; TYPE_1__ phy; } ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 scalar_t__ DUPLEX_FULL ;
 int SUPPORTED_Autoneg ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static void emac_ethtool_get_pauseparam(struct net_device *ndev,
     struct ethtool_pauseparam *pp)
{
 struct emac_instance *dev = netdev_priv(ndev);

 mutex_lock(&dev->link_lock);
 if ((dev->phy.features & SUPPORTED_Autoneg) &&
     (dev->phy.advertising & (ADVERTISED_Pause | ADVERTISED_Asym_Pause)))
  pp->autoneg = 1;

 if (dev->phy.duplex == DUPLEX_FULL) {
  if (dev->phy.pause)
   pp->rx_pause = pp->tx_pause = 1;
  else if (dev->phy.asym_pause)
   pp->tx_pause = 1;
 }
 mutex_unlock(&dev->link_lock);
}
