
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dev; struct gswip_priv* priv; } ;
struct gswip_priv {int dummy; } ;


 int GSWIP_MDIO_CTRL ;
 int GSWIP_MDIO_CTRL_BUSY ;
 int GSWIP_MDIO_CTRL_PHYAD_MASK ;
 int GSWIP_MDIO_CTRL_PHYAD_SHIFT ;
 int GSWIP_MDIO_CTRL_REGAD_MASK ;
 int GSWIP_MDIO_CTRL_WR ;
 int GSWIP_MDIO_WRITE ;
 int dev_err (int *,char*) ;
 int gswip_mdio_poll (struct gswip_priv*) ;
 int gswip_mdio_w (struct gswip_priv*,int,int ) ;

__attribute__((used)) static int gswip_mdio_wr(struct mii_bus *bus, int addr, int reg, u16 val)
{
 struct gswip_priv *priv = bus->priv;
 int err;

 err = gswip_mdio_poll(priv);
 if (err) {
  dev_err(&bus->dev, "waiting for MDIO bus busy timed out\n");
  return err;
 }

 gswip_mdio_w(priv, val, GSWIP_MDIO_WRITE);
 gswip_mdio_w(priv, GSWIP_MDIO_CTRL_BUSY | GSWIP_MDIO_CTRL_WR |
  ((addr & GSWIP_MDIO_CTRL_PHYAD_MASK) << GSWIP_MDIO_CTRL_PHYAD_SHIFT) |
  (reg & GSWIP_MDIO_CTRL_REGAD_MASK),
  GSWIP_MDIO_CTRL);

 return 0;
}
