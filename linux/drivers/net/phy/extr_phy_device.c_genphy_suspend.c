
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int phy_set_bits (struct phy_device*,int ,int ) ;

int genphy_suspend(struct phy_device *phydev)
{
 return phy_set_bits(phydev, MII_BMCR, BMCR_PDOWN);
}
