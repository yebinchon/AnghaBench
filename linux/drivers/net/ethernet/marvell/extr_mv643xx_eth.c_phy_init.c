
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; int duplex; int advertising; int autoneg; int supported; } ;
struct net_device {struct phy_device* phydev; } ;
struct mv643xx_eth_private {struct net_device* dev; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 int linkmode_copy (int ,int ) ;
 int linkmode_set_bit (int ,int ) ;
 int linkmode_zero (int ) ;
 int phy_start_aneg (struct phy_device*) ;

__attribute__((used)) static void phy_init(struct mv643xx_eth_private *mp, int speed, int duplex)
{
 struct net_device *dev = mp->dev;
 struct phy_device *phy = dev->phydev;

 if (speed == 0) {
  phy->autoneg = AUTONEG_ENABLE;
  phy->speed = 0;
  phy->duplex = 0;
  linkmode_copy(phy->advertising, phy->supported);
  linkmode_set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
     phy->advertising);
 } else {
  phy->autoneg = AUTONEG_DISABLE;
  linkmode_zero(phy->advertising);
  phy->speed = speed;
  phy->duplex = duplex;
 }
 phy_start_aneg(phy);
}
