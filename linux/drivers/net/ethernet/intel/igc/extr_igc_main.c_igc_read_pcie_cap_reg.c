
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igc_hw {struct igc_adapter* back; } ;
struct igc_adapter {int pdev; } ;
typedef int s32 ;


 int IGC_ERR_CONFIG ;
 int IGC_SUCCESS ;
 int pci_is_pcie (int ) ;
 int pcie_capability_read_word (int ,int ,int *) ;

s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
{
 struct igc_adapter *adapter = hw->back;

 if (!pci_is_pcie(adapter->pdev))
  return -IGC_ERR_CONFIG;

 pcie_capability_read_word(adapter->pdev, reg, value);

 return IGC_SUCCESS;
}
