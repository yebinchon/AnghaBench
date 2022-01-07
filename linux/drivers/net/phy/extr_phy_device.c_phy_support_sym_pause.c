
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; int advertising; } ;


 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int linkmode_clear_bit (int ,int ) ;
 int phy_copy_pause_bits (int ,int ) ;

void phy_support_sym_pause(struct phy_device *phydev)
{
 linkmode_clear_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT, phydev->supported);
 phy_copy_pause_bits(phydev->advertising, phydev->supported);
}
