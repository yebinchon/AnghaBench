
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int MII_BRCM_FET_BRCMTEST ;
 int MII_BRCM_FET_BT_SRE ;
 int MII_BRCM_FET_INTREG ;
 int MII_BRCM_FET_IR_DUPLEX_EN ;
 int MII_BRCM_FET_IR_ENABLE ;
 int MII_BRCM_FET_IR_LINK_EN ;
 int MII_BRCM_FET_IR_MASK ;
 int MII_BRCM_FET_IR_SPEED_EN ;
 int MII_BRCM_FET_SHDW_AM4_LED_MASK ;
 int MII_BRCM_FET_SHDW_AM4_LED_MODE1 ;
 int MII_BRCM_FET_SHDW_AS2_APDE ;
 int MII_BRCM_FET_SHDW_AUXMODE4 ;
 int MII_BRCM_FET_SHDW_AUXSTAT2 ;
 int MII_BRCM_FET_SHDW_MC_FAME ;
 int MII_BRCM_FET_SHDW_MISCCTRL ;
 int PHY_BRCM_AUTO_PWRDWN_ENABLE ;
 int brcm_phy_setbits (struct phy_device*,int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int brcm_fet_config_init(struct phy_device *phydev)
{
 int reg, err, err2, brcmtest;


 err = phy_write(phydev, MII_BMCR, BMCR_RESET);
 if (err < 0)
  return err;

 reg = phy_read(phydev, MII_BRCM_FET_INTREG);
 if (reg < 0)
  return reg;


 reg = MII_BRCM_FET_IR_DUPLEX_EN |
       MII_BRCM_FET_IR_SPEED_EN |
       MII_BRCM_FET_IR_LINK_EN |
       MII_BRCM_FET_IR_ENABLE |
       MII_BRCM_FET_IR_MASK;

 err = phy_write(phydev, MII_BRCM_FET_INTREG, reg);
 if (err < 0)
  return err;


 brcmtest = phy_read(phydev, MII_BRCM_FET_BRCMTEST);
 if (brcmtest < 0)
  return brcmtest;

 reg = brcmtest | MII_BRCM_FET_BT_SRE;

 err = phy_write(phydev, MII_BRCM_FET_BRCMTEST, reg);
 if (err < 0)
  return err;


 reg = phy_read(phydev, MII_BRCM_FET_SHDW_AUXMODE4);
 if (reg < 0) {
  err = reg;
  goto done;
 }

 reg &= ~MII_BRCM_FET_SHDW_AM4_LED_MASK;
 reg |= MII_BRCM_FET_SHDW_AM4_LED_MODE1;

 err = phy_write(phydev, MII_BRCM_FET_SHDW_AUXMODE4, reg);
 if (err < 0)
  goto done;


 err = brcm_phy_setbits(phydev, MII_BRCM_FET_SHDW_MISCCTRL,
           MII_BRCM_FET_SHDW_MC_FAME);
 if (err < 0)
  goto done;

 if (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE) {

  err = brcm_phy_setbits(phydev, MII_BRCM_FET_SHDW_AUXSTAT2,
            MII_BRCM_FET_SHDW_AS2_APDE);
 }

done:

 err2 = phy_write(phydev, MII_BRCM_FET_BRCMTEST, brcmtest);
 if (!err)
  err = err2;

 return err;
}
