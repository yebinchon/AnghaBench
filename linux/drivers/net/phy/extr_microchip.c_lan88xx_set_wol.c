
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct lan88xx_priv* priv; } ;
struct lan88xx_priv {int wolopts; } ;
struct ethtool_wolinfo {int wolopts; } ;



__attribute__((used)) static int lan88xx_set_wol(struct phy_device *phydev,
      struct ethtool_wolinfo *wol)
{
 struct lan88xx_priv *priv = phydev->priv;

 priv->wolopts = wol->wolopts;

 return 0;
}
