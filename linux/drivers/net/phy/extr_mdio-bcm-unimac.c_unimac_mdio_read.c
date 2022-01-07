
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct unimac_mdio_priv {int (* wait_func ) (int ) ;int wait_func_data; } ;
struct mii_bus {int phy_ignore_ta_mask; struct unimac_mdio_priv* priv; } ;


 int EIO ;
 int MDIO_CMD ;
 int MDIO_PMD_SHIFT ;
 int MDIO_RD ;
 int MDIO_READ_FAIL ;
 int MDIO_REG_SHIFT ;
 int stub1 (int ) ;
 int unimac_mdio_readl (struct unimac_mdio_priv*,int ) ;
 int unimac_mdio_start (struct unimac_mdio_priv*) ;
 int unimac_mdio_writel (struct unimac_mdio_priv*,int,int ) ;

__attribute__((used)) static int unimac_mdio_read(struct mii_bus *bus, int phy_id, int reg)
{
 struct unimac_mdio_priv *priv = bus->priv;
 int ret;
 u32 cmd;


 cmd = MDIO_RD | (phy_id << MDIO_PMD_SHIFT) | (reg << MDIO_REG_SHIFT);
 unimac_mdio_writel(priv, cmd, MDIO_CMD);


 unimac_mdio_start(priv);

 ret = priv->wait_func(priv->wait_func_data);
 if (ret)
  return ret;

 cmd = unimac_mdio_readl(priv, MDIO_CMD);






 if (!(bus->phy_ignore_ta_mask & 1 << phy_id) && (cmd & MDIO_READ_FAIL))
  return -EIO;

 return cmd & 0xffff;
}
