
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct orion_mdio_dev {int regs; } ;
struct mii_bus {struct orion_mdio_dev* priv; } ;


 int EOPNOTSUPP ;
 int MII_ADDR_C45 ;
 int MVMDIO_SMI_DATA_SHIFT ;
 int MVMDIO_SMI_PHY_ADDR_SHIFT ;
 int MVMDIO_SMI_PHY_REG_SHIFT ;
 int MVMDIO_SMI_WRITE_OPERATION ;
 int orion_mdio_smi_ops ;
 int orion_mdio_wait_ready (int *,struct mii_bus*) ;
 int writel (int,int ) ;

__attribute__((used)) static int orion_mdio_smi_write(struct mii_bus *bus, int mii_id,
    int regnum, u16 value)
{
 struct orion_mdio_dev *dev = bus->priv;
 int ret;

 if (regnum & MII_ADDR_C45)
  return -EOPNOTSUPP;

 ret = orion_mdio_wait_ready(&orion_mdio_smi_ops, bus);
 if (ret < 0)
  return ret;

 writel(((mii_id << MVMDIO_SMI_PHY_ADDR_SHIFT) |
  (regnum << MVMDIO_SMI_PHY_REG_SHIFT) |
  MVMDIO_SMI_WRITE_OPERATION |
  (value << MVMDIO_SMI_DATA_SHIFT)),
        dev->regs);

 return 0;
}
