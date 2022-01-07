
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {struct adin_priv* priv; TYPE_1__ mdio; } ;
struct adin_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct adin_priv* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static int adin_probe(struct phy_device *phydev)
{
 struct device *dev = &phydev->mdio.dev;
 struct adin_priv *priv;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 phydev->priv = priv;

 return 0;
}
