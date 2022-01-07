
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {struct igc_hw hw; } ;


 int IGC_COLLISION_THRESHOLD ;
 int IGC_CT_SHIFT ;
 int IGC_TCTL ;
 int IGC_TCTL_CT ;
 int IGC_TCTL_EN ;
 int IGC_TCTL_PSP ;
 int IGC_TCTL_RTLC ;
 int IGC_TXDCTL (int ) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igc_setup_tctl(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 u32 tctl;


 wr32(IGC_TXDCTL(0), 0);


 tctl = rd32(IGC_TCTL);
 tctl &= ~IGC_TCTL_CT;
 tctl |= IGC_TCTL_PSP | IGC_TCTL_RTLC |
  (IGC_COLLISION_THRESHOLD << IGC_CT_SHIFT);


 tctl |= IGC_TCTL_EN;

 wr32(IGC_TCTL, tctl);
}
