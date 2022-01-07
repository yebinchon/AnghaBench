
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int media_type; scalar_t__ type; } ;
struct TYPE_4__ {int (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {int serdes_has_link; TYPE_1__ ops; int get_link_status; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_ERR_PHY ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_STATUS_LU ;
 int STATUS ;




 scalar_t__ e1000_phy_igp_3 ;
 int e_info (char*) ;
 int er32 (int ) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;

__attribute__((used)) static bool e1000e_has_link(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 bool link_active = 0;
 s32 ret_val = 0;






 switch (hw->phy.media_type) {
 case 131:
  if (hw->mac.get_link_status) {
   ret_val = hw->mac.ops.check_for_link(hw);
   link_active = !hw->mac.get_link_status;
  } else {
   link_active = 1;
  }
  break;
 case 130:
  ret_val = hw->mac.ops.check_for_link(hw);
  link_active = !!(er32(STATUS) & E1000_STATUS_LU);
  break;
 case 129:
  ret_val = hw->mac.ops.check_for_link(hw);
  link_active = hw->mac.serdes_has_link;
  break;
 default:
 case 128:
  break;
 }

 if ((ret_val == -E1000_ERR_PHY) && (hw->phy.type == e1000_phy_igp_3) &&
     (er32(CTRL) & E1000_PHY_CTRL_GBE_DISABLE)) {

  e_info("Gigabit has been disabled, downgrading speed\n");
 }

 return link_active;
}
