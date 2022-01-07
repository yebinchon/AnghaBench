
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {struct marvell_priv* priv; TYPE_1__ mdio; } ;
struct marvell_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct marvell_priv* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int marvell_probe(struct phy_device *phydev)
{
 struct marvell_priv *priv;

 priv = devm_kzalloc(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 phydev->priv = priv;

 return 0;
}
