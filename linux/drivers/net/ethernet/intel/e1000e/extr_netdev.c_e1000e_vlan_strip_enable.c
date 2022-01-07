
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int CTRL ;
 int E1000_CTRL_VME ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000e_vlan_strip_enable(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl;


 ctrl = er32(CTRL);
 ctrl |= E1000_CTRL_VME;
 ew32(CTRL, ctrl);
}
