
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_CTRL1 ;
 int MDIO_CTRL1_LPOWER ;
 int MDIO_MMD_VEND1 ;
 int phy_set_bits_mmd (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int aqr107_suspend(struct phy_device *phydev)
{
 return phy_set_bits_mmd(phydev, MDIO_MMD_VEND1, MDIO_CTRL1,
    MDIO_CTRL1_LPOWER);
}
