
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix_ctrl; } ;





 int LAN88XX_EXT_MODE_CTRL ;
 int LAN88XX_EXT_MODE_CTRL_AUTO_MDIX_ ;
 int LAN88XX_EXT_MODE_CTRL_MDIX_MASK_ ;
 int LAN88XX_EXT_MODE_CTRL_MDI_ ;
 int LAN88XX_EXT_MODE_CTRL_MDI_X_ ;
 int LAN88XX_EXT_PAGE_ACCESS ;
 int LAN88XX_EXT_PAGE_SPACE_0 ;
 int LAN88XX_EXT_PAGE_SPACE_1 ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static void lan88xx_set_mdix(struct phy_device *phydev)
{
 int buf;
 int val;

 switch (phydev->mdix_ctrl) {
 case 130:
  val = LAN88XX_EXT_MODE_CTRL_MDI_;
  break;
 case 128:
  val = LAN88XX_EXT_MODE_CTRL_MDI_X_;
  break;
 case 129:
  val = LAN88XX_EXT_MODE_CTRL_AUTO_MDIX_;
  break;
 default:
  return;
 }

 phy_write(phydev, LAN88XX_EXT_PAGE_ACCESS, LAN88XX_EXT_PAGE_SPACE_1);
 buf = phy_read(phydev, LAN88XX_EXT_MODE_CTRL);
 buf &= ~LAN88XX_EXT_MODE_CTRL_MDIX_MASK_;
 buf |= val;
 phy_write(phydev, LAN88XX_EXT_MODE_CTRL, buf);
 phy_write(phydev, LAN88XX_EXT_PAGE_ACCESS, LAN88XX_EXT_PAGE_SPACE_0);
}
