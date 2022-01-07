
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int wvbr; struct e1000_hw hw; } ;


 int E1000_WVBR ;


 int rd32 (int ) ;

__attribute__((used)) static void igb_check_wvbr(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 wvbr = 0;

 switch (hw->mac.type) {
 case 129:
 case 128:
  wvbr = rd32(E1000_WVBR);
  if (!wvbr)
   return;
  break;
 default:
  break;
 }

 adapter->wvbr |= wvbr;
}
