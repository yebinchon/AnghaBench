
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {scalar_t__ mac_type; int phy_id; int phy_type; } ;
typedef int s32 ;


 int E1000_ERR_PHY_TYPE ;
 int E1000_SUCCESS ;
 scalar_t__ e1000_82541 ;
 scalar_t__ e1000_82541_rev_2 ;
 scalar_t__ e1000_82547 ;
 scalar_t__ e1000_82547_rev_2 ;
 int e1000_phy_8201 ;
 int e1000_phy_8211 ;
 int e1000_phy_igp ;
 int e1000_phy_m88 ;
 int e1000_phy_undefined ;
 scalar_t__ e1000_undefined ;

__attribute__((used)) static s32 e1000_set_phy_type(struct e1000_hw *hw)
{
 if (hw->mac_type == e1000_undefined)
  return -E1000_ERR_PHY_TYPE;

 switch (hw->phy_id) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  hw->phy_type = e1000_phy_m88;
  break;
 case 135:
  if (hw->mac_type == e1000_82541 ||
      hw->mac_type == e1000_82541_rev_2 ||
      hw->mac_type == e1000_82547 ||
      hw->mac_type == e1000_82547_rev_2)
   hw->phy_type = e1000_phy_igp;
  break;
 case 128:
  hw->phy_type = e1000_phy_8211;
  break;
 case 129:
  hw->phy_type = e1000_phy_8201;
  break;
 default:

  hw->phy_type = e1000_phy_undefined;
  return -E1000_ERR_PHY_TYPE;
 }

 return E1000_SUCCESS;
}
