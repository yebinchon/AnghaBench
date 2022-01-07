
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bcm_sysport_priv {int crc_fwd; int is_lite; } ;
typedef int netdev_features_t ;


 int CMD_CRC_FWD ;
 int GIB_CONTROL ;
 int GIB_FCS_STRIP ;
 int GIB_FCS_STRIP_SHIFT ;
 int UMAC_CMD ;
 int bcm_sysport_set_rx_csum (struct net_device*,int ) ;
 int bcm_sysport_set_tx_csum (struct net_device*,int ) ;
 int gib_readl (struct bcm_sysport_priv*,int ) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int umac_readl (struct bcm_sysport_priv*,int ) ;

__attribute__((used)) static int bcm_sysport_set_features(struct net_device *dev,
        netdev_features_t features)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);


 if (!priv->is_lite)
  priv->crc_fwd = !!(umac_readl(priv, UMAC_CMD) & CMD_CRC_FWD);
 else
  priv->crc_fwd = !((gib_readl(priv, GIB_CONTROL) &
      GIB_FCS_STRIP) >> GIB_FCS_STRIP_SHIFT);

 bcm_sysport_set_rx_csum(dev, features);
 bcm_sysport_set_tx_csum(dev, features);

 return 0;
}
