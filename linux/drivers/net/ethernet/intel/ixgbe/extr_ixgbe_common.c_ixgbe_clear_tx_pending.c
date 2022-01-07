
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; } ;
struct ixgbe_hw {int hw_addr; TYPE_1__ mac; } ;


 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_GCR_EXT ;
 scalar_t__ IXGBE_GCR_EXT_BUFFERS_CLEAR ;
 int IXGBE_HLREG0 ;
 scalar_t__ IXGBE_HLREG0_LPBK ;
 int IXGBE_PCI_DEVICE_STATUS ;
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 scalar_t__ ixgbe_pcie_timeout_poll (struct ixgbe_hw*) ;
 int ixgbe_read_pci_cfg_word (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_removed (int ) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

void ixgbe_clear_tx_pending(struct ixgbe_hw *hw)
{
 u32 gcr_ext, hlreg0, i, poll;
 u16 value;





 if (!(hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED))
  return;






 hlreg0 = IXGBE_READ_REG(hw, IXGBE_HLREG0);
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0 | IXGBE_HLREG0_LPBK);


 IXGBE_WRITE_FLUSH(hw);
 usleep_range(3000, 6000);




 poll = ixgbe_pcie_timeout_poll(hw);
 for (i = 0; i < poll; i++) {
  usleep_range(100, 200);
  value = ixgbe_read_pci_cfg_word(hw, IXGBE_PCI_DEVICE_STATUS);
  if (ixgbe_removed(hw->hw_addr))
   break;
  if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
   break;
 }


 gcr_ext = IXGBE_READ_REG(hw, IXGBE_GCR_EXT);
 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT,
   gcr_ext | IXGBE_GCR_EXT_BUFFERS_CLEAR);


 IXGBE_WRITE_FLUSH(hw);
 udelay(20);


 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT, gcr_ext);
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0);
}
