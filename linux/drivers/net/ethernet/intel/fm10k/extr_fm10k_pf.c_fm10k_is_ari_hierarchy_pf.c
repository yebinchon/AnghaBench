
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm10k_hw {int dummy; } ;


 int FM10K_PCIE_SRIOV_CTRL ;
 int FM10K_PCIE_SRIOV_CTRL_VFARI ;
 int fm10k_read_pci_cfg_word (struct fm10k_hw*,int ) ;

__attribute__((used)) static bool fm10k_is_ari_hierarchy_pf(struct fm10k_hw *hw)
{
 u16 sriov_ctrl = fm10k_read_pci_cfg_word(hw, FM10K_PCIE_SRIOV_CTRL);

 return !!(sriov_ctrl & FM10K_PCIE_SRIOV_CTRL_VFARI);
}
