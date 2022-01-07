
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct unimac_mdio_priv {int dummy; } ;


 int MDIO_CMD ;
 int MDIO_START_BUSY ;
 int unimac_mdio_readl (struct unimac_mdio_priv*,int ) ;
 int unimac_mdio_writel (struct unimac_mdio_priv*,int ,int ) ;

__attribute__((used)) static inline void unimac_mdio_start(struct unimac_mdio_priv *priv)
{
 u32 reg;

 reg = unimac_mdio_readl(priv, MDIO_CMD);
 reg |= MDIO_START_BUSY;
 unimac_mdio_writel(priv, reg, MDIO_CMD);
}
