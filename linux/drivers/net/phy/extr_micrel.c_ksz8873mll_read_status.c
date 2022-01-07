
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; scalar_t__ asym_pause; scalar_t__ pause; int speed; int duplex; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int KSZ8873MLL_GLOBAL_CONTROL_4 ;
 int KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX ;
 int KSZ8873MLL_GLOBAL_CONTROL_4_SPEED ;
 int SPEED_10 ;
 int SPEED_100 ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int ksz8873mll_read_status(struct phy_device *phydev)
{
 int regval;


 regval = phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);

 regval = phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);

 if (regval & KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX)
  phydev->duplex = DUPLEX_HALF;
 else
  phydev->duplex = DUPLEX_FULL;

 if (regval & KSZ8873MLL_GLOBAL_CONTROL_4_SPEED)
  phydev->speed = SPEED_10;
 else
  phydev->speed = SPEED_100;

 phydev->link = 1;
 phydev->pause = phydev->asym_pause = 0;

 return 0;
}
