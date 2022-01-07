
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igb_adapter {int pdev; } ;
struct e1000_hw {struct igb_adapter* back; } ;


 int pci_write_config_word (int ,int ,int ) ;

void igb_write_pci_cfg(struct e1000_hw *hw, u32 reg, u16 *value)
{
 struct igb_adapter *adapter = hw->back;

 pci_write_config_word(adapter->pdev, reg, *value);
}
