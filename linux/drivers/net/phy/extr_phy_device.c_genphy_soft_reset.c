
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_ISOLATE ;
 int BMCR_RESET ;
 int MII_BMCR ;
 int genphy_setup_forced (struct phy_device*) ;
 int phy_modify (struct phy_device*,int ,int ,int ) ;
 int phy_poll_reset (struct phy_device*) ;

int genphy_soft_reset(struct phy_device *phydev)
{
 u16 res = BMCR_RESET;
 int ret;

 if (phydev->autoneg == AUTONEG_ENABLE)
  res |= BMCR_ANRESTART;

 ret = phy_modify(phydev, MII_BMCR, BMCR_ISOLATE, res);
 if (ret < 0)
  return ret;

 ret = phy_poll_reset(phydev);
 if (ret)
  return ret;


 if (phydev->autoneg == AUTONEG_DISABLE)
  ret = genphy_setup_forced(phydev);

 return ret;
}
