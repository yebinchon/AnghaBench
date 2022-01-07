
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHY_INTERFACE_MODE_GMII ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_INTERFACE_MODE_RTBI ;
 int PHY_INTERFACE_MODE_TBI ;
 scalar_t__ phy_interface_mode_is_rgmii (int) ;

__attribute__((used)) static inline int rgmii_valid_mode(int phy_mode)
{
 return phy_interface_mode_is_rgmii(phy_mode) ||
  phy_mode == PHY_INTERFACE_MODE_GMII ||
  phy_mode == PHY_INTERFACE_MODE_MII ||
  phy_mode == PHY_INTERFACE_MODE_TBI ||
  phy_mode == PHY_INTERFACE_MODE_RTBI;
}
