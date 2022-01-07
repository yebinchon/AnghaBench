
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; scalar_t__ speed; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int MII_VSC82X4_EXT_PAGE_16E ;
 int MII_VSC82X4_EXT_PAGE_17E ;
 int MII_VSC82X4_EXT_PAGE_18E ;
 int MII_VSC82X4_EXT_PAGE_ACCESS ;
 scalar_t__ SPEED_100 ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc82x4_config_autocross_enable(struct phy_device *phydev)
{
 int ret;

 if (phydev->autoneg == AUTONEG_ENABLE || phydev->speed > SPEED_100)
  return 0;


 ret = phy_write(phydev, MII_VSC82X4_EXT_PAGE_ACCESS, 0x52b5);
 if (ret >= 0)
  ret = phy_write(phydev, MII_VSC82X4_EXT_PAGE_18E, 0x0012);
 if (ret >= 0)
  ret = phy_write(phydev, MII_VSC82X4_EXT_PAGE_17E, 0x2803);
 if (ret >= 0)
  ret = phy_write(phydev, MII_VSC82X4_EXT_PAGE_16E, 0x87fa);

 if (ret >= 0)
  ret = phy_write(phydev, MII_VSC82X4_EXT_PAGE_ACCESS, 0x0000);
 else
  phy_write(phydev, MII_VSC82X4_EXT_PAGE_ACCESS, 0x0000);

 return ret;
}
