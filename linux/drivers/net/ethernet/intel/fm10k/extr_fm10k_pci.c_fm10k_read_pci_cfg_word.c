
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_intfc {int pdev; } ;
struct fm10k_hw {int hw_addr; struct fm10k_intfc* back; } ;


 scalar_t__ FM10K_REMOVED (int ) ;
 int fm10k_write_flush (struct fm10k_hw*) ;
 int pci_read_config_word (int ,int ,int*) ;

u16 fm10k_read_pci_cfg_word(struct fm10k_hw *hw, u32 reg)
{
 struct fm10k_intfc *interface = hw->back;
 u16 value = 0;

 if (FM10K_REMOVED(hw->hw_addr))
  return ~value;

 pci_read_config_word(interface->pdev, reg, &value);
 if (value == 0xFFFF)
  fm10k_write_flush(hw);

 return value;
}
