
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int sfp_gpio_en; scalar_t__ phy_mode; void* sfp_rdy; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int GPIOD_IN ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int device_property_present (struct device*,char*) ;
 void* gpiod_get (struct device*,char*,int ) ;

__attribute__((used)) static void xgene_enet_gpiod_get(struct xgene_enet_pdata *pdata)
{
 struct device *dev = &pdata->pdev->dev;

 pdata->sfp_gpio_en = 0;
 if (pdata->phy_mode != PHY_INTERFACE_MODE_XGMII ||
     (!device_property_present(dev, "sfp-gpios") &&
      !device_property_present(dev, "rxlos-gpios")))
  return;

 pdata->sfp_gpio_en = 1;
 pdata->sfp_rdy = gpiod_get(dev, "rxlos", GPIOD_IN);
 if (IS_ERR(pdata->sfp_rdy))
  pdata->sfp_rdy = gpiod_get(dev, "sfp", GPIOD_IN);
}
