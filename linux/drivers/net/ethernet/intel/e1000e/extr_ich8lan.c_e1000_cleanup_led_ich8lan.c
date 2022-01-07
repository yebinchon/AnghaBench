
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ledctl_default; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int IFE_PHY_SPECIAL_CONTROL_LED ;
 int LEDCTL ;
 scalar_t__ e1000_phy_ife ;
 int e1e_wphy (struct e1000_hw*,int ,int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static s32 e1000_cleanup_led_ich8lan(struct e1000_hw *hw)
{
 if (hw->phy.type == e1000_phy_ife)
  return e1e_wphy(hw, IFE_PHY_SPECIAL_CONTROL_LED, 0);

 ew32(LEDCTL, hw->mac.ledctl_default);
 return 0;
}
