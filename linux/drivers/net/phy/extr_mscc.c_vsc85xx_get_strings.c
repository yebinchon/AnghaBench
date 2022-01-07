
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vsc8531_private {int nstats; TYPE_1__* hw_stats; } ;
struct phy_device {struct vsc8531_private* priv; } ;
struct TYPE_2__ {int string; } ;


 int ETH_GSTRING_LEN ;
 int strlcpy (int *,int ,int) ;

__attribute__((used)) static void vsc85xx_get_strings(struct phy_device *phydev, u8 *data)
{
 struct vsc8531_private *priv = phydev->priv;
 int i;

 if (!priv)
  return;

 for (i = 0; i < priv->nstats; i++)
  strlcpy(data + i * ETH_GSTRING_LEN, priv->hw_stats[i].string,
   ETH_GSTRING_LEN);
}
