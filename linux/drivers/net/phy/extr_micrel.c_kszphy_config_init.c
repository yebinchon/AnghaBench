
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct kszphy_priv* priv; } ;
struct kszphy_type {scalar_t__ has_nand_tree_disable; scalar_t__ has_broadcast_disable; } ;
struct kszphy_priv {struct kszphy_type* type; } ;


 int kszphy_broadcast_disable (struct phy_device*) ;
 int kszphy_config_reset (struct phy_device*) ;
 int kszphy_nand_tree_disable (struct phy_device*) ;

__attribute__((used)) static int kszphy_config_init(struct phy_device *phydev)
{
 struct kszphy_priv *priv = phydev->priv;
 const struct kszphy_type *type;

 if (!priv)
  return 0;

 type = priv->type;

 if (type->has_broadcast_disable)
  kszphy_broadcast_disable(phydev);

 if (type->has_nand_tree_disable)
  kszphy_nand_tree_disable(phydev);

 return kszphy_config_reset(phydev);
}
