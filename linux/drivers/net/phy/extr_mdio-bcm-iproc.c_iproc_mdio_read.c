
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {struct iproc_mdio_priv* priv; } ;
struct iproc_mdio_priv {scalar_t__ base; } ;


 int BIT (int ) ;
 int MII_DATA_MASK ;
 scalar_t__ MII_DATA_OFFSET ;
 int MII_DATA_OP_READ ;
 int MII_DATA_OP_SHIFT ;
 int MII_DATA_PA_SHIFT ;
 int MII_DATA_RA_SHIFT ;
 int MII_DATA_SB_SHIFT ;
 int MII_DATA_TA_SHIFT ;
 int MII_DATA_TA_VAL ;
 int iproc_mdio_wait_for_idle (scalar_t__) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int iproc_mdio_read(struct mii_bus *bus, int phy_id, int reg)
{
 struct iproc_mdio_priv *priv = bus->priv;
 u32 cmd;
 int rc;

 rc = iproc_mdio_wait_for_idle(priv->base);
 if (rc)
  return rc;


 cmd = (MII_DATA_TA_VAL << MII_DATA_TA_SHIFT) |
  (reg << MII_DATA_RA_SHIFT) |
  (phy_id << MII_DATA_PA_SHIFT) |
  BIT(MII_DATA_SB_SHIFT) |
  (MII_DATA_OP_READ << MII_DATA_OP_SHIFT);

 writel(cmd, priv->base + MII_DATA_OFFSET);

 rc = iproc_mdio_wait_for_idle(priv->base);
 if (rc)
  return rc;

 cmd = readl(priv->base + MII_DATA_OFFSET) & MII_DATA_MASK;

 return cmd;
}
