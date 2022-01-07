
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {struct igc_hw hw; } ;


 int IGC_CTRL_EXT ;
 int IGC_CTRL_EXT_DRV_LOAD ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igc_get_hw_control(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 u32 ctrl_ext;


 ctrl_ext = rd32(IGC_CTRL_EXT);
 wr32(IGC_CTRL_EXT,
      ctrl_ext | IGC_CTRL_EXT_DRV_LOAD);
}
