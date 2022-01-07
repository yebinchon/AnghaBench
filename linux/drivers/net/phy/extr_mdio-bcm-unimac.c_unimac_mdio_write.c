
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct unimac_mdio_priv {int (* wait_func ) (int ) ;int wait_func_data; } ;
struct mii_bus {struct unimac_mdio_priv* priv; } ;


 int MDIO_CMD ;
 int MDIO_PMD_SHIFT ;
 int MDIO_REG_SHIFT ;
 int MDIO_WR ;
 int stub1 (int ) ;
 int unimac_mdio_start (struct unimac_mdio_priv*) ;
 int unimac_mdio_writel (struct unimac_mdio_priv*,int,int ) ;

__attribute__((used)) static int unimac_mdio_write(struct mii_bus *bus, int phy_id,
        int reg, u16 val)
{
 struct unimac_mdio_priv *priv = bus->priv;
 u32 cmd;


 cmd = MDIO_WR | (phy_id << MDIO_PMD_SHIFT) |
  (reg << MDIO_REG_SHIFT) | (0xffff & val);
 unimac_mdio_writel(priv, cmd, MDIO_CMD);

 unimac_mdio_start(priv);

 return priv->wait_func(priv->wait_func_data);
}
