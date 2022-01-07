
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int mac_type; int phy_spd_default; int ledctl_default; int ledctl_mode1; int media_type; } ;
typedef int s32 ;


 int E1000_LEDCTL_LED0_BLINK ;
 int E1000_LEDCTL_LED0_IVRT ;
 int E1000_LEDCTL_LED0_MODE_MASK ;
 int E1000_LEDCTL_LED0_MODE_SHIFT ;
 int E1000_LEDCTL_MODE_LED_OFF ;
 int E1000_SUCCESS ;
 int IGP01E1000_GMII_FIFO ;
 int IGP01E1000_GMII_SPD ;
 int LEDCTL ;
 int e1000_media_type_copper ;
 int e1000_media_type_fiber ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int ) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000_setup_led(struct e1000_hw *hw)
{
 u32 ledctl;
 s32 ret_val = E1000_SUCCESS;

 switch (hw->mac_type) {
 case 133:
 case 132:
 case 131:
 case 130:

  break;
 case 135:
 case 129:
 case 134:
 case 128:

  ret_val = e1000_read_phy_reg(hw, IGP01E1000_GMII_FIFO,
          &hw->phy_spd_default);
  if (ret_val)
   return ret_val;
  ret_val = e1000_write_phy_reg(hw, IGP01E1000_GMII_FIFO,
           (u16)(hw->phy_spd_default &
           ~IGP01E1000_GMII_SPD));
  if (ret_val)
   return ret_val;

 default:
  if (hw->media_type == e1000_media_type_fiber) {
   ledctl = er32(LEDCTL);

   hw->ledctl_default = ledctl;

   ledctl &= ~(E1000_LEDCTL_LED0_IVRT |
        E1000_LEDCTL_LED0_BLINK |
        E1000_LEDCTL_LED0_MODE_MASK);
   ledctl |= (E1000_LEDCTL_MODE_LED_OFF <<
       E1000_LEDCTL_LED0_MODE_SHIFT);
   ew32(LEDCTL, ledctl);
  } else if (hw->media_type == e1000_media_type_copper)
   ew32(LEDCTL, hw->ledctl_mode1);
  break;
 }

 return E1000_SUCCESS;
}
