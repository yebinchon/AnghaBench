
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHY_ANY_UID ;
 int phy_register_fixup (char const*,int ,int,int (*) (struct phy_device*)) ;

int phy_register_fixup_for_id(const char *bus_id,
         int (*run)(struct phy_device *))
{
 return phy_register_fixup(bus_id, PHY_ANY_UID, 0xffffffff, run);
}
