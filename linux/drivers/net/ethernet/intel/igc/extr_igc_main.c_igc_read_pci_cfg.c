
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igc_hw {struct igc_adapter* back; } ;
struct igc_adapter {int pdev; } ;


 int pci_read_config_word (int ,int ,int *) ;

void igc_read_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value)
{
 struct igc_adapter *adapter = hw->back;

 pci_read_config_word(adapter->pdev, reg, value);
}
