
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vsc8531_private {int nstats; } ;
struct phy_device {struct vsc8531_private* priv; } ;
struct ethtool_stats {int dummy; } ;


 int vsc85xx_get_stat (struct phy_device*,int) ;

__attribute__((used)) static void vsc85xx_get_stats(struct phy_device *phydev,
         struct ethtool_stats *stats, u64 *data)
{
 struct vsc8531_private *priv = phydev->priv;
 int i;

 if (!priv)
  return;

 for (i = 0; i < priv->nstats; i++)
  data[i] = vsc85xx_get_stat(phydev, i);
}
