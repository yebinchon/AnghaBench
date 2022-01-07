
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc8531_private {int nstats; } ;
struct phy_device {struct vsc8531_private* priv; } ;



__attribute__((used)) static int vsc85xx_get_sset_count(struct phy_device *phydev)
{
 struct vsc8531_private *priv = phydev->priv;

 if (!priv)
  return 0;

 return priv->nstats;
}
