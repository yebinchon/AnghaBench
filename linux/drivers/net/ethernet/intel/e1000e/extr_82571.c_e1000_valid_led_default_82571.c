
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int ID_LED_DEFAULT ;
 int ID_LED_DEFAULT_82573 ;
 int ID_LED_RESERVED_0000 ;
 int ID_LED_RESERVED_F746 ;
 int ID_LED_RESERVED_FFFF ;
 int NVM_ID_LED_SETTINGS ;



 scalar_t__ e1000_read_nvm (struct e1000_hw*,int ,int,int *) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_valid_led_default_82571(struct e1000_hw *hw, u16 *data)
{
 s32 ret_val;

 ret_val = e1000_read_nvm(hw, NVM_ID_LED_SETTINGS, 1, data);
 if (ret_val) {
  e_dbg("NVM Read Error\n");
  return ret_val;
 }

 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  if (*data == ID_LED_RESERVED_F746)
   *data = ID_LED_DEFAULT_82573;
  break;
 default:
  if (*data == ID_LED_RESERVED_0000 ||
      *data == ID_LED_RESERVED_FFFF)
   *data = ID_LED_DEFAULT;
  break;
 }

 return 0;
}
