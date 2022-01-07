
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int media_type; int get_link_status; int serdes_has_link; int mac_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_STATUS_LU ;
 int STATUS ;
 int e1000_ce4100 ;
 int e1000_check_for_link (struct e1000_hw*) ;



 int er32 (int ) ;

bool e1000_has_link(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 bool link_active = 0;







 switch (hw->media_type) {
 case 130:
  if (hw->mac_type == e1000_ce4100)
   hw->get_link_status = 1;
  if (hw->get_link_status) {
   e1000_check_for_link(hw);
   link_active = !hw->get_link_status;
  } else {
   link_active = 1;
  }
  break;
 case 129:
  e1000_check_for_link(hw);
  link_active = !!(er32(STATUS) & E1000_STATUS_LU);
  break;
 case 128:
  e1000_check_for_link(hw);
  link_active = hw->serdes_has_link;
  break;
 default:
  break;
 }

 return link_active;
}
