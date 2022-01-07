
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_AN_CTRL1_ENABLE ;
 int MDIO_AN_CTRL1_RESTART ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 int phy_clear_bits_mmd (struct phy_device*,int ,int ,int) ;

int genphy_c45_an_disable_aneg(struct phy_device *phydev)
{

 return phy_clear_bits_mmd(phydev, MDIO_MMD_AN, MDIO_CTRL1,
      MDIO_AN_CTRL1_ENABLE | MDIO_AN_CTRL1_RESTART);
}
