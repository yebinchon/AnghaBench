
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; int flags; } ;
struct ixgbe_hw {int hw_addr; TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_CTRL ;
 int IXGBE_CTRL_GIO_DIS ;
 int IXGBE_ERR_MASTER_REQUESTS_PENDING ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_PCI_DEVICE_STATUS ;
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ;
 scalar_t__ IXGBE_PCI_MASTER_DISABLE_TIMEOUT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_GIO ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_mac_X550 ;
 scalar_t__ ixgbe_pcie_timeout_poll (struct ixgbe_hw*) ;
 int ixgbe_read_pci_cfg_word (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_removed (int ) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_disable_pcie_master(struct ixgbe_hw *hw)
{
 u32 i, poll;
 u16 value;


 IXGBE_WRITE_REG(hw, IXGBE_CTRL, IXGBE_CTRL_GIO_DIS);


 for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
  if (IXGBE_READ_REG(hw, IXGBE_CTRL) & IXGBE_CTRL_GIO_DIS)
   break;
  usleep_range(100, 120);
 }
 if (i >= IXGBE_PCI_MASTER_DISABLE_TIMEOUT) {
  hw_dbg(hw, "GIO disable did not set - requesting resets\n");
  goto gio_disable_fail;
 }


 if (!(IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO) ||
     ixgbe_removed(hw->hw_addr))
  return 0;


 for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
  udelay(100);
  if (!(IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
   return 0;
 }
 hw_dbg(hw, "GIO Master Disable bit didn't clear - requesting resets\n");
gio_disable_fail:
 hw->mac.flags |= IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;

 if (hw->mac.type >= ixgbe_mac_X550)
  return 0;





 poll = ixgbe_pcie_timeout_poll(hw);
 for (i = 0; i < poll; i++) {
  udelay(100);
  value = ixgbe_read_pci_cfg_word(hw, IXGBE_PCI_DEVICE_STATUS);
  if (ixgbe_removed(hw->hw_addr))
   return 0;
  if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
   return 0;
 }

 hw_dbg(hw, "PCIe transaction pending bit also did not clear.\n");
 return IXGBE_ERR_MASTER_REQUESTS_PENDING;
}
