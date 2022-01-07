
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int flow_mode; int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; int tx_pause; int rx_pause; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int SKY2_FLAG_AUTO_PAUSE ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int sky2_flow (int ,int ) ;
 int sky2_phy_reinit (struct sky2_port*) ;

__attribute__((used)) static int sky2_set_pauseparam(struct net_device *dev,
          struct ethtool_pauseparam *ecmd)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 if (ecmd->autoneg == AUTONEG_ENABLE)
  sky2->flags |= SKY2_FLAG_AUTO_PAUSE;
 else
  sky2->flags &= ~SKY2_FLAG_AUTO_PAUSE;

 sky2->flow_mode = sky2_flow(ecmd->rx_pause, ecmd->tx_pause);

 if (netif_running(dev))
  sky2_phy_reinit(sky2);

 return 0;
}
