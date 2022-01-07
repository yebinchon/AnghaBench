
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {struct bcm_sf2_priv* priv; } ;
struct bcm_sf2_priv {int indir_phy_mask; int master_mii_bus; } ;


 int BIT (int) ;
 int BRCM_PSEUDO_PHY_ADDR ;
 int bcm_sf2_sw_indir_rw (struct bcm_sf2_priv*,int,int,int,int ) ;
 int mdiobus_read_nested (int ,int,int) ;

__attribute__((used)) static int bcm_sf2_sw_mdio_read(struct mii_bus *bus, int addr, int regnum)
{
 struct bcm_sf2_priv *priv = bus->priv;




 if (addr == BRCM_PSEUDO_PHY_ADDR && priv->indir_phy_mask & BIT(addr))
  return bcm_sf2_sw_indir_rw(priv, 1, addr, regnum, 0);
 else
  return mdiobus_read_nested(priv->master_mii_bus, addr, regnum);
}
