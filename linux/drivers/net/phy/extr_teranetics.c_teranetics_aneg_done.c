
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_MMD_VEND1 ;
 int genphy_c45_aneg_done (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int) ;

__attribute__((used)) static int teranetics_aneg_done(struct phy_device *phydev)
{



 if (!phy_read_mmd(phydev, MDIO_MMD_VEND1, 93))
  return genphy_c45_aneg_done(phydev);

 return 1;
}
