
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_VSC8601_EPHY_CTL ;
 int MII_VSC8601_EPHY_CTL_RGMII_SKEW ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc8601_add_skew(struct phy_device *phydev)
{
 int ret;

 ret = phy_read(phydev, MII_VSC8601_EPHY_CTL);
 if (ret < 0)
  return ret;

 ret |= MII_VSC8601_EPHY_CTL_RGMII_SKEW;
 return phy_write(phydev, MII_VSC8601_EPHY_CTL, ret);
}
