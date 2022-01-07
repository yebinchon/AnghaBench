
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BMCR ;
 int genphy_soft_reset (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int asix_soft_reset(struct phy_device *phydev)
{
 int ret;


 ret = phy_write(phydev, MII_BMCR, 0);
 if (ret < 0)
  return ret;

 return genphy_soft_reset(phydev);
}
