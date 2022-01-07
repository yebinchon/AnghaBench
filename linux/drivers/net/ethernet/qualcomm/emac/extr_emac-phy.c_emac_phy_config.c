
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {char* name; TYPE_5__ dev; } ;
struct mii_bus {char* name; struct emac_adapter* priv; TYPE_5__* parent; int write; int read; int id; } ;
struct emac_adapter {TYPE_2__* phydev; struct mii_bus* mii_bus; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_10__ {TYPE_1__ mdio; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int dev_err (TYPE_5__*,char*) ;
 int device_property_read_u32 (TYPE_5__*,char*,int *) ;
 struct mii_bus* devm_mdiobus_alloc (TYPE_5__*) ;
 int emac_mdio_read ;
 int emac_mdio_write ;
 int get_device (int *) ;
 scalar_t__ has_acpi_companion (TYPE_5__*) ;
 TYPE_2__* mdiobus_get_phy (struct mii_bus*,int ) ;
 int mdiobus_register (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 TYPE_2__* of_phy_find_device (struct device_node*) ;
 TYPE_2__* phy_find_first (struct mii_bus*) ;
 int snprintf (int ,int ,char*,char*) ;

int emac_phy_config(struct platform_device *pdev, struct emac_adapter *adpt)
{
 struct device_node *np = pdev->dev.of_node;
 struct mii_bus *mii_bus;
 int ret;


 adpt->mii_bus = mii_bus = devm_mdiobus_alloc(&pdev->dev);
 if (!mii_bus)
  return -ENOMEM;

 mii_bus->name = "emac-mdio";
 snprintf(mii_bus->id, MII_BUS_ID_SIZE, "%s", pdev->name);
 mii_bus->read = emac_mdio_read;
 mii_bus->write = emac_mdio_write;
 mii_bus->parent = &pdev->dev;
 mii_bus->priv = adpt;

 if (has_acpi_companion(&pdev->dev)) {
  u32 phy_addr;

  ret = mdiobus_register(mii_bus);
  if (ret) {
   dev_err(&pdev->dev, "could not register mdio bus\n");
   return ret;
  }
  ret = device_property_read_u32(&pdev->dev, "phy-channel",
            &phy_addr);
  if (ret)



   adpt->phydev = phy_find_first(mii_bus);
  else
   adpt->phydev = mdiobus_get_phy(mii_bus, phy_addr);






  if (adpt->phydev)
   get_device(&adpt->phydev->mdio.dev);
 } else {
  struct device_node *phy_np;

  ret = of_mdiobus_register(mii_bus, np);
  if (ret) {
   dev_err(&pdev->dev, "could not register mdio bus\n");
   return ret;
  }

  phy_np = of_parse_phandle(np, "phy-handle", 0);
  adpt->phydev = of_phy_find_device(phy_np);
  of_node_put(phy_np);
 }

 if (!adpt->phydev) {
  dev_err(&pdev->dev, "could not find external phy\n");
  mdiobus_unregister(mii_bus);
  return -ENODEV;
 }

 return 0;
}
