
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unimac_mdio_pdata {int phy_mask; } ;
struct device {struct bcmgenet_platform_data* platform_data; } ;
struct bcmgenet_priv {TYPE_1__* pdev; } ;
struct bcmgenet_platform_data {scalar_t__ phy_interface; int phy_address; scalar_t__ mdio_enabled; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ PHY_INTERFACE_MODE_MOCA ;
 int PHY_MAX_ADDR ;

__attribute__((used)) static void bcmgenet_mii_pdata_init(struct bcmgenet_priv *priv,
        struct unimac_mdio_pdata *ppd)
{
 struct device *kdev = &priv->pdev->dev;
 struct bcmgenet_platform_data *pd = kdev->platform_data;

 if (pd->phy_interface != PHY_INTERFACE_MODE_MOCA && pd->mdio_enabled) {



  if (pd->phy_address >= 0 && pd->phy_address < PHY_MAX_ADDR)
   ppd->phy_mask = 1 << pd->phy_address;
  else
   ppd->phy_mask = 0;
 }
}
