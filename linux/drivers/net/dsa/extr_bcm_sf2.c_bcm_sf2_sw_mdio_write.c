
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {struct bcm_sf2_priv* priv; } ;
struct bcm_sf2_priv {int indir_phy_mask; int master_mii_bus; } ;


 int BIT (int) ;
 int BRCM_PSEUDO_PHY_ADDR ;
 int bcm_sf2_sw_indir_rw (struct bcm_sf2_priv*,int ,int,int,int ) ;
 int mdiobus_write_nested (int ,int,int,int ) ;

__attribute__((used)) static int bcm_sf2_sw_mdio_write(struct mii_bus *bus, int addr, int regnum,
     u16 val)
{
 struct bcm_sf2_priv *priv = bus->priv;




 if (addr == BRCM_PSEUDO_PHY_ADDR && priv->indir_phy_mask & BIT(addr))
  return bcm_sf2_sw_indir_rw(priv, 0, addr, regnum, val);
 else
  return mdiobus_write_nested(priv->master_mii_bus, addr,
    regnum, val);
}
