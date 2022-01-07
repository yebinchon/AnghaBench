
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ ledctl_default; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int HV_LED_CONFIG ;
 int e1e_wphy (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_cleanup_led_pchlan(struct e1000_hw *hw)
{
 return e1e_wphy(hw, HV_LED_CONFIG, (u16)hw->mac.ledctl_default);
}
