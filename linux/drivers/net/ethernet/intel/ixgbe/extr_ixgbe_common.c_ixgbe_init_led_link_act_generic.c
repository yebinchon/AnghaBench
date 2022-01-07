
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_mac_info {int led_link_act; int type; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int IXGBE_LEDCTL ;
 int IXGBE_LED_LINK_ACTIVE ;
 int IXGBE_LED_MODE_MASK_BASE ;
 int IXGBE_LED_MODE_SHIFT (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;



s32 ixgbe_init_led_link_act_generic(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 u32 led_reg, led_mode;
 u16 i;

 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);


 for (i = 0; i < 4; i++) {
  led_mode = led_reg >> IXGBE_LED_MODE_SHIFT(i);

  if ((led_mode & IXGBE_LED_MODE_MASK_BASE) ==
      IXGBE_LED_LINK_ACTIVE) {
   mac->led_link_act = i;
   return 0;
  }
 }




 switch (hw->mac.type) {
 case 128:
  mac->led_link_act = 0;
  break;
 case 129:
  mac->led_link_act = 1;
  break;
 default:
  mac->led_link_act = 2;
 }

 return 0;
}
