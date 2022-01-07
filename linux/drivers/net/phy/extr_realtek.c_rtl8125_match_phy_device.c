
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ phy_id; } ;


 scalar_t__ RTL_GENERIC_PHYID ;
 scalar_t__ rtlgen_supports_2_5gbps (struct phy_device*) ;

__attribute__((used)) static int rtl8125_match_phy_device(struct phy_device *phydev)
{
 return phydev->phy_id == RTL_GENERIC_PHYID &&
        rtlgen_supports_2_5gbps(phydev);
}
