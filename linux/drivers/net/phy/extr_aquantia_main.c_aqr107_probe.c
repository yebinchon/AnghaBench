
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {int priv; TYPE_1__ mdio; } ;
struct aqr107_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int aqr_hwmon_probe (struct phy_device*) ;
 int devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int aqr107_probe(struct phy_device *phydev)
{
 phydev->priv = devm_kzalloc(&phydev->mdio.dev,
        sizeof(struct aqr107_priv), GFP_KERNEL);
 if (!phydev->priv)
  return -ENOMEM;

 return aqr_hwmon_probe(phydev);
}
