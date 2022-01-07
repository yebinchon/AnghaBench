
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {struct dp83867_private* priv; TYPE_1__ mdio; } ;
struct dp83867_private {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dp83867_private* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int dp83867_probe(struct phy_device *phydev)
{
 struct dp83867_private *dp83867;

 dp83867 = devm_kzalloc(&phydev->mdio.dev, sizeof(*dp83867),
          GFP_KERNEL);
 if (!dp83867)
  return -ENOMEM;

 phydev->priv = dp83867;

 return 0;
}
