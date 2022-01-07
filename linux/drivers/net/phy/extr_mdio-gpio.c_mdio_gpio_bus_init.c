
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {char* name; int phy_ignore_ta_mask; int phy_mask; int id; struct device* parent; } ;
struct mdio_gpio_platform_data {int phy_ignore_ta_mask; int phy_mask; } ;
struct TYPE_2__ {int * ops; } ;
struct mdio_gpio_info {TYPE_1__ ctrl; } ;
struct device {int dummy; } ;


 int MII_BUS_ID_SIZE ;
 struct mii_bus* alloc_mdio_bitbang (TYPE_1__*) ;
 struct mdio_gpio_platform_data* dev_get_platdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct mii_bus*) ;
 int mdio_gpio_ops ;
 int snprintf (int ,int ,char*,int) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static struct mii_bus *mdio_gpio_bus_init(struct device *dev,
       struct mdio_gpio_info *bitbang,
       int bus_id)
{
 struct mdio_gpio_platform_data *pdata = dev_get_platdata(dev);
 struct mii_bus *new_bus;

 bitbang->ctrl.ops = &mdio_gpio_ops;

 new_bus = alloc_mdio_bitbang(&bitbang->ctrl);
 if (!new_bus)
  return ((void*)0);

 new_bus->name = "GPIO Bitbanged MDIO";
 new_bus->parent = dev;

 if (bus_id != -1)
  snprintf(new_bus->id, MII_BUS_ID_SIZE, "gpio-%x", bus_id);
 else
  strncpy(new_bus->id, "gpio", MII_BUS_ID_SIZE);

 if (pdata) {
  new_bus->phy_mask = pdata->phy_mask;
  new_bus->phy_ignore_ta_mask = pdata->phy_ignore_ta_mask;
 }

 dev_set_drvdata(dev, new_bus);

 return new_bus;
}
