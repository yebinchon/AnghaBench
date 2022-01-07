
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phy_interface_t ;


 scalar_t__ PHY_INTERFACE_MODE_10GKR ;
 scalar_t__ PHY_INTERFACE_MODE_XAUI ;

__attribute__((used)) static bool mvpp2_is_xlg(phy_interface_t interface)
{
 return interface == PHY_INTERFACE_MODE_10GKR ||
        interface == PHY_INTERFACE_MODE_XAUI;
}
