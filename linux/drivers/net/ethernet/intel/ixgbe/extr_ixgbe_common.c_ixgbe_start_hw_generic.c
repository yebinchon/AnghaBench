
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* get_device_caps ) (struct ixgbe_hw*,int*) ;scalar_t__ (* setup_fc ) (struct ixgbe_hw*) ;int (* clear_hw_cntrs ) (struct ixgbe_hw*) ;int (* clear_vfta ) (struct ixgbe_hw*) ;int (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {int type; TYPE_3__ ops; } ;
struct TYPE_5__ {int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; int media_type; } ;
struct ixgbe_hw {int need_crosstalk_fix; int adapter_stopped; TYPE_4__ mac; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_NS_DIS ;
 int IXGBE_DEVICE_CAPS_NO_CROSSTALK_WR ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;



 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*) ;
 scalar_t__ stub5 (struct ixgbe_hw*) ;
 int stub6 (struct ixgbe_hw*,int*) ;

s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw)
{
 s32 ret_val;
 u32 ctrl_ext;
 u16 device_caps;


 hw->phy.media_type = hw->mac.ops.get_media_type(hw);


 hw->phy.ops.identify(hw);


 hw->mac.ops.clear_vfta(hw);


 hw->mac.ops.clear_hw_cntrs(hw);


 ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
 ctrl_ext |= IXGBE_CTRL_EXT_NS_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);
 IXGBE_WRITE_FLUSH(hw);


 if (hw->mac.ops.setup_fc) {
  ret_val = hw->mac.ops.setup_fc(hw);
  if (ret_val)
   return ret_val;
 }


 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  hw->mac.ops.get_device_caps(hw, &device_caps);
  if (device_caps & IXGBE_DEVICE_CAPS_NO_CROSSTALK_WR)
   hw->need_crosstalk_fix = 0;
  else
   hw->need_crosstalk_fix = 1;
  break;
 default:
  hw->need_crosstalk_fix = 0;
  break;
 }


 hw->adapter_stopped = 0;

 return 0;
}
