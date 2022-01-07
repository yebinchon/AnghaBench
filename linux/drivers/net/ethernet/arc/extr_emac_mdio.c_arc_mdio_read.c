
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {struct arc_emac_priv* priv; } ;
struct arc_emac_priv {int dev; } ;


 int R_MDIO ;
 int arc_mdio_complete_wait (struct arc_emac_priv*) ;
 int arc_reg_get (struct arc_emac_priv*,int ) ;
 int arc_reg_set (struct arc_emac_priv*,int ,int) ;
 int dev_dbg (int ,char*,int,int,unsigned int) ;

__attribute__((used)) static int arc_mdio_read(struct mii_bus *bus, int phy_addr, int reg_num)
{
 struct arc_emac_priv *priv = bus->priv;
 unsigned int value;
 int error;

 arc_reg_set(priv, R_MDIO,
      0x60020000 | (phy_addr << 23) | (reg_num << 18));

 error = arc_mdio_complete_wait(priv);
 if (error < 0)
  return error;

 value = arc_reg_get(priv, R_MDIO) & 0xffff;

 dev_dbg(priv->dev, "arc_mdio_read(phy_addr=%i, reg_num=%x) = %x\n",
  phy_addr, reg_num, value);

 return value;
}
