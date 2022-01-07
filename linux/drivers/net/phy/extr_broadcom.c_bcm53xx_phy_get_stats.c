
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phy_device {struct bcm53xx_phy_priv* priv; } ;
struct ethtool_stats {int dummy; } ;
struct bcm53xx_phy_priv {int stats; } ;


 int bcm_phy_get_stats (struct phy_device*,int ,struct ethtool_stats*,int *) ;

__attribute__((used)) static void bcm53xx_phy_get_stats(struct phy_device *phydev,
      struct ethtool_stats *stats, u64 *data)
{
 struct bcm53xx_phy_priv *priv = phydev->priv;

 bcm_phy_get_stats(phydev, priv->stats, stats, data);
}
