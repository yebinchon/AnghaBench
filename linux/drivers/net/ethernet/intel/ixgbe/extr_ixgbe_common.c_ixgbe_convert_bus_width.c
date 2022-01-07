
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ixgbe_bus_width { ____Placeholder_ixgbe_bus_width } ixgbe_bus_width ;


 int IXGBE_PCI_LINK_WIDTH ;




 int ixgbe_bus_width_pcie_x1 ;
 int ixgbe_bus_width_pcie_x2 ;
 int ixgbe_bus_width_pcie_x4 ;
 int ixgbe_bus_width_pcie_x8 ;
 int ixgbe_bus_width_unknown ;

enum ixgbe_bus_width ixgbe_convert_bus_width(u16 link_status)
{
 switch (link_status & IXGBE_PCI_LINK_WIDTH) {
 case 131:
  return ixgbe_bus_width_pcie_x1;
 case 130:
  return ixgbe_bus_width_pcie_x2;
 case 129:
  return ixgbe_bus_width_pcie_x4;
 case 128:
  return ixgbe_bus_width_pcie_x8;
 default:
  return ixgbe_bus_width_unknown;
 }
}
