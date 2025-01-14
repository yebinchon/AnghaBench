
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int flow_mode; int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;




 int SKY2_FLAG_AUTO_PAUSE ;
 struct sky2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sky2_get_pauseparam(struct net_device *dev,
    struct ethtool_pauseparam *ecmd)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 switch (sky2->flow_mode) {
 case 130:
  ecmd->tx_pause = ecmd->rx_pause = 0;
  break;
 case 128:
  ecmd->tx_pause = 1, ecmd->rx_pause = 0;
  break;
 case 129:
  ecmd->tx_pause = 0, ecmd->rx_pause = 1;
  break;
 case 131:
  ecmd->tx_pause = ecmd->rx_pause = 1;
 }

 ecmd->autoneg = (sky2->flags & SKY2_FLAG_AUTO_PAUSE)
  ? AUTONEG_ENABLE : AUTONEG_DISABLE;
}
