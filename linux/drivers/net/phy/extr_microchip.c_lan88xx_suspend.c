
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct lan88xx_priv* priv; } ;
struct lan88xx_priv {int wolopts; } ;


 int genphy_suspend (struct phy_device*) ;

__attribute__((used)) static int lan88xx_suspend(struct phy_device *phydev)
{
 struct lan88xx_priv *priv = phydev->priv;


 if (!priv->wolopts)
  genphy_suspend(phydev);

 return 0;
}
