
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unimac_mdio_priv {int dummy; } ;


 int MDIO_CMD ;
 unsigned int MDIO_START_BUSY ;
 unsigned int unimac_mdio_readl (struct unimac_mdio_priv*,int ) ;

__attribute__((used)) static inline unsigned int unimac_mdio_busy(struct unimac_mdio_priv *priv)
{
 return unimac_mdio_readl(priv, MDIO_CMD) & MDIO_START_BUSY;
}
