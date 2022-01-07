
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; int advertising; } ;


 int phy_copy_pause_bits (int ,int ) ;

void phy_support_asym_pause(struct phy_device *phydev)
{
 phy_copy_pause_bits(phydev->advertising, phydev->supported);
}
