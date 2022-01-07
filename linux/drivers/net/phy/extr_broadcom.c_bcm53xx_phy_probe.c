
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; struct bcm53xx_phy_priv* priv; } ;
struct bcm53xx_phy_priv {int stats; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm_phy_get_sset_count (struct phy_device*) ;
 int devm_kcalloc (int *,int ,int,int ) ;
 struct bcm53xx_phy_priv* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int bcm53xx_phy_probe(struct phy_device *phydev)
{
 struct bcm53xx_phy_priv *priv;

 priv = devm_kzalloc(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 phydev->priv = priv;

 priv->stats = devm_kcalloc(&phydev->mdio.dev,
       bcm_phy_get_sset_count(phydev), sizeof(u64),
       GFP_KERNEL);
 if (!priv->stats)
  return -ENOMEM;

 return 0;
}
