
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHY_ANY_UID ;
 int phy_unregister_fixup (char const*,int ,int) ;

int phy_unregister_fixup_for_id(const char *bus_id)
{
 return phy_unregister_fixup(bus_id, PHY_ANY_UID, 0xffffffff);
}
