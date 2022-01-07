
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ledctl_mode2; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_SWDPIN0 ;
 int E1000_CTRL_SWDPIO0 ;
 int LEDCTL ;


 int er32 (int ) ;
 int ew32 (int ,int ) ;

s32 e1000e_led_on_generic(struct e1000_hw *hw)
{
 u32 ctrl;

 switch (hw->phy.media_type) {
 case 128:
  ctrl = er32(CTRL);
  ctrl &= ~E1000_CTRL_SWDPIN0;
  ctrl |= E1000_CTRL_SWDPIO0;
  ew32(CTRL, ctrl);
  break;
 case 129:
  ew32(LEDCTL, hw->mac.ledctl_mode2);
  break;
 default:
  break;
 }

 return 0;
}
