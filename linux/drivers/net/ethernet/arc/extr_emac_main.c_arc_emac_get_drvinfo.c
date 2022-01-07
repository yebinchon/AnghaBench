
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;
struct arc_emac_priv {int drv_version; int drv_name; } ;


 struct arc_emac_priv* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void arc_emac_get_drvinfo(struct net_device *ndev,
     struct ethtool_drvinfo *info)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);

 strlcpy(info->driver, priv->drv_name, sizeof(info->driver));
 strlcpy(info->version, priv->drv_version, sizeof(info->version));
}
