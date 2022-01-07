
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mii_bus {int dummy; } ;
struct b53_device {struct mii_bus* priv; } ;


 int BRCM_PSEUDO_PHY_ADDR ;
 int REG_MII_ADDR_READ ;
 int REG_MII_DATA0 ;
 int b53_mdio_op (struct b53_device*,int,int,int ) ;
 int mdiobus_read_nested (struct mii_bus*,int ,int ) ;

__attribute__((used)) static int b53_mdio_read8(struct b53_device *dev, u8 page, u8 reg, u8 *val)
{
 struct mii_bus *bus = dev->priv;
 int ret;

 ret = b53_mdio_op(dev, page, reg, REG_MII_ADDR_READ);
 if (ret)
  return ret;

 *val = mdiobus_read_nested(bus, BRCM_PSEUDO_PHY_ADDR,
       REG_MII_DATA0) & 0xff;

 return 0;
}
