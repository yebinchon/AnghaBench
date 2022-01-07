
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* write_reg ) (struct ixgbe_hw*,scalar_t__,int ,int ) ;int (* read_reg ) (struct ixgbe_hw*,scalar_t__,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_PARAM ;
 int IXGBE_X557_LED_MANUAL_SET_MASK ;
 scalar_t__ IXGBE_X557_LED_PROVISIONING ;
 scalar_t__ IXGBE_X557_MAX_LED_INDEX ;
 int MDIO_MMD_VEND1 ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int ,int *) ;
 int stub2 (struct ixgbe_hw*,scalar_t__,int ,int ) ;

__attribute__((used)) static s32 ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
{
 u16 phy_data;

 if (led_idx >= IXGBE_X557_MAX_LED_INDEX)
  return IXGBE_ERR_PARAM;


 hw->phy.ops.read_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
        MDIO_MMD_VEND1, &phy_data);
 phy_data &= ~IXGBE_X557_LED_MANUAL_SET_MASK;
 hw->phy.ops.write_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
         MDIO_MMD_VEND1, phy_data);

 return 0;
}
