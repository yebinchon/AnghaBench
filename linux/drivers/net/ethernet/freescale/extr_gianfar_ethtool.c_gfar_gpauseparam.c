
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int tx_pause_en; int rx_pause_en; int pause_aneg_en; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;


 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gfar_gpauseparam(struct net_device *dev,
        struct ethtool_pauseparam *epause)
{
 struct gfar_private *priv = netdev_priv(dev);

 epause->autoneg = !!priv->pause_aneg_en;
 epause->rx_pause = !!priv->rx_pause_en;
 epause->tx_pause = !!priv->tx_pause_en;
}
