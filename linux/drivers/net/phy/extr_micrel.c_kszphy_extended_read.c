
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int MII_KSZPHY_EXTREG ;
 int MII_KSZPHY_EXTREG_READ ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int kszphy_extended_read(struct phy_device *phydev,
    u32 regnum)
{
 phy_write(phydev, MII_KSZPHY_EXTREG, regnum);
 return phy_read(phydev, MII_KSZPHY_EXTREG_READ);
}
