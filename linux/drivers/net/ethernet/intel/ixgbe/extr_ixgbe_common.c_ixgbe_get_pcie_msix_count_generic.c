
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {int hw_addr; TYPE_1__ mac; } ;


 int IXGBE_MAX_MSIX_VECTORS_82598 ;
 int IXGBE_MAX_MSIX_VECTORS_82599 ;
 int IXGBE_PCIE_MSIX_82598_CAPS ;
 int IXGBE_PCIE_MSIX_82599_CAPS ;
 int IXGBE_PCIE_MSIX_TBL_SZ_MASK ;






 int ixgbe_read_pci_cfg_word (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_removed (int ) ;

u16 ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw)
{
 u16 msix_count;
 u16 max_msix_count;
 u16 pcie_offset;

 switch (hw->mac.type) {
 case 133:
  pcie_offset = IXGBE_PCIE_MSIX_82598_CAPS;
  max_msix_count = IXGBE_MAX_MSIX_VECTORS_82598;
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  pcie_offset = IXGBE_PCIE_MSIX_82599_CAPS;
  max_msix_count = IXGBE_MAX_MSIX_VECTORS_82599;
  break;
 default:
  return 1;
 }

 msix_count = ixgbe_read_pci_cfg_word(hw, pcie_offset);
 if (ixgbe_removed(hw->hw_addr))
  msix_count = 0;
 msix_count &= IXGBE_PCIE_MSIX_TBL_SZ_MASK;


 msix_count++;

 if (msix_count > max_msix_count)
  msix_count = max_msix_count;

 return msix_count;
}
