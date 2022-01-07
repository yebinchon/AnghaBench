
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; scalar_t__ autoneg; } ;


 int EINVAL ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;
 int xgmac_set_flow_ctrl (struct xgmac_priv*,int ,int ) ;

__attribute__((used)) static int xgmac_set_pauseparam(struct net_device *netdev,
         struct ethtool_pauseparam *pause)
{
 struct xgmac_priv *priv = netdev_priv(netdev);

 if (pause->autoneg)
  return -EINVAL;

 return xgmac_set_flow_ctrl(priv, pause->rx_pause, pause->tx_pause);
}
