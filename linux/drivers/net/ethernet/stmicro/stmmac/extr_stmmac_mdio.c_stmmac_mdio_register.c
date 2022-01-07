
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {struct mii_bus* mii; TYPE_2__* plat; int device; } ;
struct stmmac_mdio_bus_data {scalar_t__ probed_phy_irq; scalar_t__ irqs; int phy_mask; scalar_t__ needs_reset; } ;
struct phy_device {scalar_t__ irq; } ;
struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mii_bus {scalar_t__* irq; char* name; int parent; int phy_mask; struct net_device* priv; int id; int * reset; int * write; int * read; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int phy_addr; int bus_id; scalar_t__ phy_node; scalar_t__ has_xgmac; struct device_node* mdio_node; struct stmmac_mdio_bus_data* mdio_bus_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int MII_XGMAC_MAX_C22ADDR ;
 int PHY_MAX_ADDR ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 struct phy_device* mdiobus_get_phy (struct mii_bus*,int) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int phy_attached_info (struct phy_device*) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int stmmac_mdio_read ;
 int stmmac_mdio_reset ;
 int stmmac_mdio_write ;
 int stmmac_xgmac2_mdio_read ;
 int stmmac_xgmac2_mdio_write ;

int stmmac_mdio_register(struct net_device *ndev)
{
 int err = 0;
 struct mii_bus *new_bus;
 struct stmmac_priv *priv = netdev_priv(ndev);
 struct stmmac_mdio_bus_data *mdio_bus_data = priv->plat->mdio_bus_data;
 struct device_node *mdio_node = priv->plat->mdio_node;
 struct device *dev = ndev->dev.parent;
 int addr, found, max_addr;

 if (!mdio_bus_data)
  return 0;

 new_bus = mdiobus_alloc();
 if (!new_bus)
  return -ENOMEM;

 if (mdio_bus_data->irqs)
  memcpy(new_bus->irq, mdio_bus_data->irqs, sizeof(new_bus->irq));

 new_bus->name = "stmmac";

 if (priv->plat->has_xgmac) {
  new_bus->read = &stmmac_xgmac2_mdio_read;
  new_bus->write = &stmmac_xgmac2_mdio_write;


  max_addr = MII_XGMAC_MAX_C22ADDR + 1;


  if (priv->plat->phy_addr > MII_XGMAC_MAX_C22ADDR)
   dev_err(dev, "Unsupported phy_addr (max=%d)\n",
     MII_XGMAC_MAX_C22ADDR);
 } else {
  new_bus->read = &stmmac_mdio_read;
  new_bus->write = &stmmac_mdio_write;
  max_addr = PHY_MAX_ADDR;
 }

 if (mdio_bus_data->needs_reset)
  new_bus->reset = &stmmac_mdio_reset;

 snprintf(new_bus->id, MII_BUS_ID_SIZE, "%s-%x",
   new_bus->name, priv->plat->bus_id);
 new_bus->priv = ndev;
 new_bus->phy_mask = mdio_bus_data->phy_mask;
 new_bus->parent = priv->device;

 err = of_mdiobus_register(new_bus, mdio_node);
 if (err != 0) {
  dev_err(dev, "Cannot register the MDIO bus\n");
  goto bus_register_fail;
 }

 if (priv->plat->phy_node || mdio_node)
  goto bus_register_done;

 found = 0;
 for (addr = 0; addr < max_addr; addr++) {
  struct phy_device *phydev = mdiobus_get_phy(new_bus, addr);

  if (!phydev)
   continue;





  if (!mdio_bus_data->irqs &&
      (mdio_bus_data->probed_phy_irq > 0)) {
   new_bus->irq[addr] = mdio_bus_data->probed_phy_irq;
   phydev->irq = mdio_bus_data->probed_phy_irq;
  }






  if (priv->plat->phy_addr == -1)
   priv->plat->phy_addr = addr;

  phy_attached_info(phydev);
  found = 1;
 }

 if (!found && !mdio_node) {
  dev_warn(dev, "No PHY found\n");
  mdiobus_unregister(new_bus);
  mdiobus_free(new_bus);
  return -ENODEV;
 }

bus_register_done:
 priv->mii = new_bus;

 return 0;

bus_register_fail:
 mdiobus_free(new_bus);
 return err;
}
