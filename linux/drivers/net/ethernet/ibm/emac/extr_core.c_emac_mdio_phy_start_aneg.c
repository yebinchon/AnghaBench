
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int advertising; int duplex; int speed; int autoneg; } ;
struct mii_phy {int advertising; int duplex; int speed; int autoneg; } ;


 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 int phy_start_aneg (struct phy_device*) ;

__attribute__((used)) static int emac_mdio_phy_start_aneg(struct mii_phy *phy,
        struct phy_device *phy_dev)
{
 phy_dev->autoneg = phy->autoneg;
 phy_dev->speed = phy->speed;
 phy_dev->duplex = phy->duplex;
 ethtool_convert_legacy_u32_to_link_mode(phy_dev->advertising,
      phy->advertising);
 return phy_start_aneg(phy_dev);
}
