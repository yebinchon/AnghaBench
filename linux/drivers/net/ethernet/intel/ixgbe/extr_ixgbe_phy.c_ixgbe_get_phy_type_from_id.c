
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ixgbe_phy_type { ____Placeholder_ixgbe_phy_type } ixgbe_phy_type ;
 int ixgbe_phy_aq ;
 int ixgbe_phy_nl ;
 int ixgbe_phy_qt ;
 int ixgbe_phy_tn ;
 int ixgbe_phy_unknown ;
 int ixgbe_phy_x550em_ext_t ;

__attribute__((used)) static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
{
 enum ixgbe_phy_type phy_type;

 switch (phy_id) {
 case 133:
  phy_type = ixgbe_phy_tn;
  break;
 case 131:
 case 130:
 case 132:
  phy_type = ixgbe_phy_aq;
  break;
 case 134:
  phy_type = ixgbe_phy_qt;
  break;
 case 135:
  phy_type = ixgbe_phy_nl;
  break;
 case 129:
 case 128:
  phy_type = ixgbe_phy_x550em_ext_t;
  break;
 default:
  phy_type = ixgbe_phy_unknown;
  break;
 }

 return phy_type;
}
