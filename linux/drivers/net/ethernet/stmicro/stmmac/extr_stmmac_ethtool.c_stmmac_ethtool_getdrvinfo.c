
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;
struct TYPE_2__ {scalar_t__ has_xgmac; scalar_t__ has_gmac4; scalar_t__ has_gmac; } ;


 int DRV_MODULE_VERSION ;
 int GMAC_ETHTOOL_NAME ;
 int MAC100_ETHTOOL_NAME ;
 int XGMAC_ETHTOOL_NAME ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void stmmac_ethtool_getdrvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (priv->plat->has_gmac || priv->plat->has_gmac4)
  strlcpy(info->driver, GMAC_ETHTOOL_NAME, sizeof(info->driver));
 else if (priv->plat->has_xgmac)
  strlcpy(info->driver, XGMAC_ETHTOOL_NAME, sizeof(info->driver));
 else
  strlcpy(info->driver, MAC100_ETHTOOL_NAME,
   sizeof(info->driver));

 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
}
