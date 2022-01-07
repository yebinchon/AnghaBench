
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ID_LED_DEFAULT_ICH8LAN ;
 scalar_t__ ID_LED_RESERVED_0000 ;
 scalar_t__ ID_LED_RESERVED_FFFF ;
 int NVM_ID_LED_SETTINGS ;
 scalar_t__ e1000_read_nvm (struct e1000_hw*,int ,int,scalar_t__*) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_valid_led_default_ich8lan(struct e1000_hw *hw, u16 *data)
{
 s32 ret_val;

 ret_val = e1000_read_nvm(hw, NVM_ID_LED_SETTINGS, 1, data);
 if (ret_val) {
  e_dbg("NVM Read Error\n");
  return ret_val;
 }

 if (*data == ID_LED_RESERVED_0000 || *data == ID_LED_RESERVED_FFFF)
  *data = ID_LED_DEFAULT_ICH8LAN;

 return 0;
}
