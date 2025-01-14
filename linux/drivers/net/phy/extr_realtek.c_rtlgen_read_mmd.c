
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct phy_device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ MDIO_AN_EEE_ADV ;
 scalar_t__ MDIO_AN_EEE_LPABLE ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 scalar_t__ MDIO_PCS_EEE_ABLE ;
 int __phy_read (struct phy_device*,int) ;
 int rtl821x_write_page (struct phy_device*,int) ;

__attribute__((used)) static int rtlgen_read_mmd(struct phy_device *phydev, int devnum, u16 regnum)
{
 int ret;

 if (devnum == MDIO_MMD_PCS && regnum == MDIO_PCS_EEE_ABLE) {
  rtl821x_write_page(phydev, 0xa5c);
  ret = __phy_read(phydev, 0x12);
  rtl821x_write_page(phydev, 0);
 } else if (devnum == MDIO_MMD_AN && regnum == MDIO_AN_EEE_ADV) {
  rtl821x_write_page(phydev, 0xa5d);
  ret = __phy_read(phydev, 0x10);
  rtl821x_write_page(phydev, 0);
 } else if (devnum == MDIO_MMD_AN && regnum == MDIO_AN_EEE_LPABLE) {
  rtl821x_write_page(phydev, 0xa5d);
  ret = __phy_read(phydev, 0x11);
  rtl821x_write_page(phydev, 0);
 } else {
  ret = -EOPNOTSUPP;
 }

 return ret;
}
