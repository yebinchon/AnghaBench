
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AT803X_BT_BX_REG_SEL ;
 int AT803X_MODE_CFG_MASK ;
 int AT803X_MODE_CFG_SGMII ;
 int AT803X_PSSR ;
 int AT803X_PSSR_MR_AN_COMPLETE ;
 int AT803X_REG_CHIP_CONFIG ;
 int BMSR_ANEGCOMPLETE ;
 int genphy_aneg_done (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int phydev_warn (struct phy_device*,char*) ;

__attribute__((used)) static int at803x_aneg_done(struct phy_device *phydev)
{
 int ccr;

 int aneg_done = genphy_aneg_done(phydev);
 if (aneg_done != BMSR_ANEGCOMPLETE)
  return aneg_done;





 ccr = phy_read(phydev, AT803X_REG_CHIP_CONFIG);
 if ((ccr & AT803X_MODE_CFG_MASK) != AT803X_MODE_CFG_SGMII)
  return aneg_done;


 phy_write(phydev, AT803X_REG_CHIP_CONFIG, ccr & ~AT803X_BT_BX_REG_SEL);


 if (!(phy_read(phydev, AT803X_PSSR) & AT803X_PSSR_MR_AN_COMPLETE)) {
  phydev_warn(phydev, "803x_aneg_done: SGMII link is not ok\n");
  aneg_done = 0;
 }

 phy_write(phydev, AT803X_REG_CHIP_CONFIG, ccr | AT803X_BT_BX_REG_SEL);

 return aneg_done;
}
