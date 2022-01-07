
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct orion_mdio_dev {int regs; } ;
struct mii_bus {int parent; struct orion_mdio_dev* priv; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int GENMASK (int,int ) ;
 int MII_ADDR_C45 ;
 int MVMDIO_SMI_PHY_ADDR_SHIFT ;
 int MVMDIO_SMI_PHY_REG_SHIFT ;
 int MVMDIO_SMI_READ_OPERATION ;
 int MVMDIO_SMI_READ_VALID ;
 int dev_err (int ,char*) ;
 int orion_mdio_smi_ops ;
 int orion_mdio_wait_ready (int *,struct mii_bus*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int orion_mdio_smi_read(struct mii_bus *bus, int mii_id,
          int regnum)
{
 struct orion_mdio_dev *dev = bus->priv;
 u32 val;
 int ret;

 if (regnum & MII_ADDR_C45)
  return -EOPNOTSUPP;

 ret = orion_mdio_wait_ready(&orion_mdio_smi_ops, bus);
 if (ret < 0)
  return ret;

 writel(((mii_id << MVMDIO_SMI_PHY_ADDR_SHIFT) |
  (regnum << MVMDIO_SMI_PHY_REG_SHIFT) |
  MVMDIO_SMI_READ_OPERATION),
        dev->regs);

 ret = orion_mdio_wait_ready(&orion_mdio_smi_ops, bus);
 if (ret < 0)
  return ret;

 val = readl(dev->regs);
 if (!(val & MVMDIO_SMI_READ_VALID)) {
  dev_err(bus->parent, "SMI bus read not valid\n");
  return -ENODEV;
 }

 return val & GENMASK(15, 0);
}
