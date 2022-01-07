
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_ABLE ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static void rtl_enable_eee(struct rtl8169_private *tp)
{
 struct phy_device *phydev = tp->phydev;
 int supported = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);

 if (supported > 0)
  phy_write_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV, supported);
}
