
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int advertising; int supported; } ;


 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int linkmode_copy (int ,int ) ;
 int new ;
 int phy_copy_pause_bits (int ,int ) ;

void phy_advertise_supported(struct phy_device *phydev)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(new);

 linkmode_copy(new, phydev->supported);
 phy_copy_pause_bits(new, phydev->advertising);
 linkmode_copy(phydev->advertising, new);
}
