
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int dev; struct mii_bus* mii_bus; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;
struct mii_bus {char* name; int parent; int write; int read; struct temac_local* priv; int id; } ;
struct ll_temac_platform_data {int mdio_clk_freq; unsigned long long mdio_bus_id; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int XTE_MC_OFFSET ;
 int dev_dbg (int ,char*,int ) ;
 struct ll_temac_platform_data* dev_get_platdata (int *) ;
 struct device_node* dev_of_node (int *) ;
 struct mii_bus* devm_mdiobus_alloc (int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int snprintf (int ,int ,char*,unsigned long long) ;
 int temac_indirect_in32 (struct temac_local*,int ) ;
 int temac_indirect_out32 (struct temac_local*,int ,int) ;
 int temac_mdio_read ;
 int temac_mdio_write ;

int temac_mdio_setup(struct temac_local *lp, struct platform_device *pdev)
{
 struct ll_temac_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device_node *np = dev_of_node(&pdev->dev);
 struct mii_bus *bus;
 u32 bus_hz;
 int clk_div;
 int rc;
 struct resource res;


 bus_hz = 0;
 if (np)
  of_property_read_u32(np, "clock-frequency", &bus_hz);
 else if (pdata)
  bus_hz = pdata->mdio_clk_freq;


 clk_div = 0x3f;
 if (bus_hz != 0) {
  clk_div = bus_hz / (2500 * 1000 * 2) - 1;
  if (clk_div < 1)
   clk_div = 1;
  if (clk_div > 0x3f)
   clk_div = 0x3f;
 }



 temac_indirect_out32(lp, XTE_MC_OFFSET, 1 << 6 | clk_div);

 bus = devm_mdiobus_alloc(&pdev->dev);
 if (!bus)
  return -ENOMEM;

 if (np) {
  of_address_to_resource(np, 0, &res);
  snprintf(bus->id, MII_BUS_ID_SIZE, "%.8llx",
    (unsigned long long)res.start);
 } else if (pdata) {
  snprintf(bus->id, MII_BUS_ID_SIZE, "%.8llx",
    pdata->mdio_bus_id);
 }

 bus->priv = lp;
 bus->name = "Xilinx TEMAC MDIO";
 bus->read = temac_mdio_read;
 bus->write = temac_mdio_write;
 bus->parent = lp->dev;

 lp->mii_bus = bus;

 rc = of_mdiobus_register(bus, np);
 if (rc)
  return rc;

 dev_dbg(lp->dev, "MDIO bus registered;  MC:%x\n",
  temac_indirect_in32(lp, XTE_MC_OFFSET));
 return 0;
}
