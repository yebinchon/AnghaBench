
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int advertising; int autoneg; int duplex; int speed; } ;
struct tg3 {int phy_flags; TYPE_1__ link_config; int phy_addr; int mdio_bus; } ;
struct phy_device {int advertising; int autoneg; int duplex; int speed; } ;


 int TG3_PHYFLG_IS_CONNECTED ;
 int TG3_PHYFLG_IS_LOW_POWER ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 struct phy_device* mdiobus_get_phy (int ,int ) ;
 int phy_start (struct phy_device*) ;
 int phy_start_aneg (struct phy_device*) ;

__attribute__((used)) static void tg3_phy_start(struct tg3 *tp)
{
 struct phy_device *phydev;

 if (!(tp->phy_flags & TG3_PHYFLG_IS_CONNECTED))
  return;

 phydev = mdiobus_get_phy(tp->mdio_bus, tp->phy_addr);

 if (tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER) {
  tp->phy_flags &= ~TG3_PHYFLG_IS_LOW_POWER;
  phydev->speed = tp->link_config.speed;
  phydev->duplex = tp->link_config.duplex;
  phydev->autoneg = tp->link_config.autoneg;
  ethtool_convert_legacy_u32_to_link_mode(
   phydev->advertising, tp->link_config.advertising);
 }

 phy_start(phydev);

 phy_start_aneg(phydev);
}
