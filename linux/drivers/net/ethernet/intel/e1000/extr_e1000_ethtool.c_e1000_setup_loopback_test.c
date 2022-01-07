
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ media_type; int mac_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_RCTL_LBM_TCVR ;
 int RCTL ;




 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int e1000_set_phy_loopback (struct e1000_adapter*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static int e1000_setup_loopback_test(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 if (hw->media_type == e1000_media_type_fiber ||
     hw->media_type == e1000_media_type_internal_serdes) {
  switch (hw->mac_type) {
  case 131:
  case 129:
  case 130:
  case 128:
   return e1000_set_phy_loopback(adapter);
  default:
   rctl = er32(RCTL);
   rctl |= E1000_RCTL_LBM_TCVR;
   ew32(RCTL, rctl);
   return 0;
  }
 } else if (hw->media_type == e1000_media_type_copper) {
  return e1000_set_phy_loopback(adapter);
 }

 return 7;
}
