
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int supported; } ;


 int linkmode_clear_bit (int ,int ) ;
 int phy_advertise_supported (struct phy_device*) ;

void phy_remove_link_mode(struct phy_device *phydev, u32 link_mode)
{
 linkmode_clear_bit(link_mode, phydev->supported);
 phy_advertise_supported(phydev);
}
