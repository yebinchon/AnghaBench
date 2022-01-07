
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int KSZPHY_EXTREG_WRITE ;
 int MII_KSZPHY_EXTREG ;
 int MII_KSZPHY_EXTREG_WRITE ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int kszphy_extended_write(struct phy_device *phydev,
    u32 regnum, u16 val)
{
 phy_write(phydev, MII_KSZPHY_EXTREG, KSZPHY_EXTREG_WRITE | regnum);
 return phy_write(phydev, MII_KSZPHY_EXTREG_WRITE, val);
}
