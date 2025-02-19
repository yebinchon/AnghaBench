
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_DRV_LOAD ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_release_hw_control(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_ext;


 ctrl_ext = rd32(E1000_CTRL_EXT);
 wr32(E1000_CTRL_EXT,
   ctrl_ext & ~E1000_CTRL_EXT_DRV_LOAD);
}
