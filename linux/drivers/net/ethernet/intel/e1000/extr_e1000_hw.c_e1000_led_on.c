
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int mac_type; int ledctl_mode2; int media_type; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_SWDPIN0 ;
 int E1000_CTRL_SWDPIO0 ;
 int E1000_SUCCESS ;
 int LEDCTL ;




 int e1000_media_type_copper ;
 int e1000_media_type_fiber ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

s32 e1000_led_on(struct e1000_hw *hw)
{
 u32 ctrl = er32(CTRL);

 switch (hw->mac_type) {
 case 131:
 case 130:
 case 129:

  ctrl |= E1000_CTRL_SWDPIN0;
  ctrl |= E1000_CTRL_SWDPIO0;
  break;
 case 128:
  if (hw->media_type == e1000_media_type_fiber) {

   ctrl |= E1000_CTRL_SWDPIN0;
   ctrl |= E1000_CTRL_SWDPIO0;
  } else {

   ctrl &= ~E1000_CTRL_SWDPIN0;
   ctrl |= E1000_CTRL_SWDPIO0;
  }
  break;
 default:
  if (hw->media_type == e1000_media_type_fiber) {

   ctrl &= ~E1000_CTRL_SWDPIN0;
   ctrl |= E1000_CTRL_SWDPIO0;
  } else if (hw->media_type == e1000_media_type_copper) {
   ew32(LEDCTL, hw->ledctl_mode2);
   return E1000_SUCCESS;
  }
  break;
 }

 ew32(CTRL, ctrl);

 return E1000_SUCCESS;
}
