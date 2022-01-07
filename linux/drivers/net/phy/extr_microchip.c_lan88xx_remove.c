
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {struct lan88xx_priv* priv; TYPE_1__ mdio; } ;
struct lan88xx_priv {int dummy; } ;


 int devm_kfree (struct device*,struct lan88xx_priv*) ;

__attribute__((used)) static void lan88xx_remove(struct phy_device *phydev)
{
 struct device *dev = &phydev->mdio.dev;
 struct lan88xx_priv *priv = phydev->priv;

 if (priv)
  devm_kfree(dev, priv);
}
