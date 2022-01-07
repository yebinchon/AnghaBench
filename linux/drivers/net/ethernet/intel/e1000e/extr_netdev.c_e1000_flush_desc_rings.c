
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int pdev; struct e1000_hw hw; } ;


 int E1000_FEXTNVM11_DISABLE_MULR_FIX ;
 int FEXTNVM11 ;
 int FLUSH_DESC_REQUIRED ;
 int PCICFG_DESC_RING_STATUS ;
 int TDLEN (int ) ;
 int e1000_flush_rx_ring (struct e1000_adapter*) ;
 int e1000_flush_tx_ring (struct e1000_adapter*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int pci_read_config_word (int ,int ,int*) ;

__attribute__((used)) static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
{
 u16 hang_state;
 u32 fext_nvm11, tdlen;
 struct e1000_hw *hw = &adapter->hw;


 fext_nvm11 = er32(FEXTNVM11);
 fext_nvm11 |= E1000_FEXTNVM11_DISABLE_MULR_FIX;
 ew32(FEXTNVM11, fext_nvm11);

 tdlen = er32(TDLEN(0));
 pci_read_config_word(adapter->pdev, PCICFG_DESC_RING_STATUS,
        &hang_state);
 if (!(hang_state & FLUSH_DESC_REQUIRED) || !tdlen)
  return;
 e1000_flush_tx_ring(adapter);

 pci_read_config_word(adapter->pdev, PCICFG_DESC_RING_STATUS,
        &hang_state);
 if (hang_state & FLUSH_DESC_REQUIRED)
  e1000_flush_rx_ring(adapter);
}
