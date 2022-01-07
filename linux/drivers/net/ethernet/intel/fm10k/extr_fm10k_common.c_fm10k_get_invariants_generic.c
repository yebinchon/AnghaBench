
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mac_info {int max_msix_vectors; int dglort_map; } ;
struct fm10k_hw {struct fm10k_mac_info mac; } ;
typedef int s32 ;


 int FM10K_DGLORTMAP_NONE ;
 int fm10k_get_pcie_msix_count_generic (struct fm10k_hw*) ;

s32 fm10k_get_invariants_generic(struct fm10k_hw *hw)
{
 struct fm10k_mac_info *mac = &hw->mac;


 mac->dglort_map = FM10K_DGLORTMAP_NONE;


 mac->max_msix_vectors = fm10k_get_pcie_msix_count_generic(hw);

 return 0;
}
