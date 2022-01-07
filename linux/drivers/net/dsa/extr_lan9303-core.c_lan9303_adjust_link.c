
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ speed; scalar_t__ duplex; } ;
struct lan9303 {int phy_addr_base; int regmap; } ;
struct dsa_switch {int dev; struct lan9303* priv; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 scalar_t__ DUPLEX_FULL ;
 int LAN9303_VIRT_SPECIAL_CTRL ;
 int LAN9303_VIRT_SPECIAL_TURBO ;
 int MII_BMCR ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int dev_err (int ,char*,scalar_t__) ;
 int lan9303_phy_read (struct dsa_switch*,int,int ) ;
 int lan9303_phy_write (struct dsa_switch*,int,int ,int) ;
 int lan9303_read (int ,int ,int*) ;
 int phy_is_pseudo_fixed_link (struct phy_device*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void lan9303_adjust_link(struct dsa_switch *ds, int port,
    struct phy_device *phydev)
{
 struct lan9303 *chip = ds->priv;
 int ctl, res;

 if (!phy_is_pseudo_fixed_link(phydev))
  return;

 ctl = lan9303_phy_read(ds, port, MII_BMCR);

 ctl &= ~BMCR_ANENABLE;

 if (phydev->speed == SPEED_100)
  ctl |= BMCR_SPEED100;
 else if (phydev->speed == SPEED_10)
  ctl &= ~BMCR_SPEED100;
 else
  dev_err(ds->dev, "unsupported speed: %d\n", phydev->speed);

 if (phydev->duplex == DUPLEX_FULL)
  ctl |= BMCR_FULLDPLX;
 else
  ctl &= ~BMCR_FULLDPLX;

 res = lan9303_phy_write(ds, port, MII_BMCR, ctl);

 if (port == chip->phy_addr_base) {

  lan9303_read(chip->regmap, LAN9303_VIRT_SPECIAL_CTRL, &ctl);

  ctl &= ~LAN9303_VIRT_SPECIAL_TURBO;
  res = regmap_write(chip->regmap,
        LAN9303_VIRT_SPECIAL_CTRL, ctl);
 }
}
