
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_4__ {int dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct net_local {struct mii_bus* mii_bus; scalar_t__ base_addr; struct device_node* phy_node; TYPE_1__* ndev; } ;
struct mii_bus {char* name; struct device* parent; int write; int read; struct net_local* priv; int id; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mem_start; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int XEL_MDIOCTRL_MDIOEN_MASK ;
 scalar_t__ XEL_MDIOCTRL_OFFSET ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 struct phy_device* of_phy_find_device (struct device_node*) ;
 int put_device (int *) ;
 int snprintf (int ,int ,char*,unsigned long long) ;
 int xemaclite_mdio_read ;
 int xemaclite_mdio_write ;
 int xemaclite_writel (int ,scalar_t__) ;

__attribute__((used)) static int xemaclite_mdio_setup(struct net_local *lp, struct device *dev)
{
 struct mii_bus *bus;
 int rc;
 struct resource res;
 struct device_node *np = of_get_parent(lp->phy_node);
 struct device_node *npp;




 if (!np) {
  dev_err(dev, "Failed to register mdio bus.\n");
  return -ENODEV;
 }
 npp = of_get_parent(np);

 of_address_to_resource(npp, 0, &res);
 if (lp->ndev->mem_start != res.start) {
  struct phy_device *phydev;
  phydev = of_phy_find_device(lp->phy_node);
  if (!phydev)
   dev_info(dev,
     "MDIO of the phy is not registered yet\n");
  else
   put_device(&phydev->mdio.dev);
  return 0;
 }




 xemaclite_writel(XEL_MDIOCTRL_MDIOEN_MASK,
    lp->base_addr + XEL_MDIOCTRL_OFFSET);

 bus = mdiobus_alloc();
 if (!bus) {
  dev_err(dev, "Failed to allocate mdiobus\n");
  return -ENOMEM;
 }

 snprintf(bus->id, MII_BUS_ID_SIZE, "%.8llx",
   (unsigned long long)res.start);
 bus->priv = lp;
 bus->name = "Xilinx Emaclite MDIO";
 bus->read = xemaclite_mdio_read;
 bus->write = xemaclite_mdio_write;
 bus->parent = dev;

 rc = of_mdiobus_register(bus, np);
 if (rc) {
  dev_err(dev, "Failed to register mdio bus.\n");
  goto err_register;
 }

 lp->mii_bus = bus;

 return 0;

err_register:
 mdiobus_free(bus);
 return rc;
}
