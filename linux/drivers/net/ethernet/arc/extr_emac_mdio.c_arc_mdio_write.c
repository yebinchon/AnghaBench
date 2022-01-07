
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {struct arc_emac_priv* priv; } ;
struct arc_emac_priv {int dev; } ;


 int R_MDIO ;
 int arc_mdio_complete_wait (struct arc_emac_priv*) ;
 int arc_reg_set (struct arc_emac_priv*,int ,int) ;
 int dev_dbg (int ,char*,int,int,int) ;

__attribute__((used)) static int arc_mdio_write(struct mii_bus *bus, int phy_addr,
     int reg_num, u16 value)
{
 struct arc_emac_priv *priv = bus->priv;

 dev_dbg(priv->dev,
  "arc_mdio_write(phy_addr=%i, reg_num=%x, value=%x)\n",
  phy_addr, reg_num, value);

 arc_reg_set(priv, R_MDIO,
      0x50020000 | (phy_addr << 23) | (reg_num << 18) | value);

 return arc_mdio_complete_wait(priv);
}
