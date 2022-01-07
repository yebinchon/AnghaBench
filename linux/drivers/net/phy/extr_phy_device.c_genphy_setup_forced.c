
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ speed; scalar_t__ duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;


 int BMCR_FULLDPLX ;
 int BMCR_ISOLATE ;
 int BMCR_LOOPBACK ;
 int BMCR_PDOWN ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 scalar_t__ DUPLEX_FULL ;
 int MII_BMCR ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int phy_modify (struct phy_device*,int ,int,int ) ;

int genphy_setup_forced(struct phy_device *phydev)
{
 u16 ctl = 0;

 phydev->pause = 0;
 phydev->asym_pause = 0;

 if (SPEED_1000 == phydev->speed)
  ctl |= BMCR_SPEED1000;
 else if (SPEED_100 == phydev->speed)
  ctl |= BMCR_SPEED100;

 if (DUPLEX_FULL == phydev->duplex)
  ctl |= BMCR_FULLDPLX;

 return phy_modify(phydev, MII_BMCR,
     ~(BMCR_LOOPBACK | BMCR_ISOLATE | BMCR_PDOWN), ctl);
}
