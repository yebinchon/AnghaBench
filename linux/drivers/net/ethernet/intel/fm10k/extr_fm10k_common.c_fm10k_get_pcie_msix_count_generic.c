
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm10k_hw {int dummy; } ;


 int FM10K_MAX_MSIX_VECTORS ;
 int FM10K_PCI_MSIX_MSG_CTRL ;
 int FM10K_PCI_MSIX_MSG_CTRL_TBL_SZ_MASK ;
 int fm10k_read_pci_cfg_word (struct fm10k_hw*,int ) ;

__attribute__((used)) static u16 fm10k_get_pcie_msix_count_generic(struct fm10k_hw *hw)
{
 u16 msix_count;


 msix_count = fm10k_read_pci_cfg_word(hw, FM10K_PCI_MSIX_MSG_CTRL);
 msix_count &= FM10K_PCI_MSIX_MSG_CTRL_TBL_SZ_MASK;


 msix_count++;

 if (msix_count > FM10K_MAX_MSIX_VECTORS)
  msix_count = FM10K_MAX_MSIX_VECTORS;

 return msix_count;
}
