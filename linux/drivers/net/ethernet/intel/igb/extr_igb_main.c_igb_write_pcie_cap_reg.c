
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igb_adapter {int pdev; } ;
struct e1000_hw {struct igb_adapter* back; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 scalar_t__ pcie_capability_write_word (int ,int ,int ) ;

s32 igb_write_pcie_cap_reg(struct e1000_hw *hw, u32 reg, u16 *value)
{
 struct igb_adapter *adapter = hw->back;

 if (pcie_capability_write_word(adapter->pdev, reg, *value))
  return -E1000_ERR_CONFIG;

 return 0;
}
