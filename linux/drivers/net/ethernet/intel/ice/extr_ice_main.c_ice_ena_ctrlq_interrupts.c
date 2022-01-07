
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ice_hw {int dummy; } ;


 int PFINT_FW_CTL ;
 int PFINT_FW_CTL_CAUSE_ENA_M ;
 int PFINT_FW_CTL_MSIX_INDX_M ;
 int PFINT_MBX_CTL ;
 int PFINT_MBX_CTL_CAUSE_ENA_M ;
 int PFINT_MBX_CTL_MSIX_INDX_M ;
 int PFINT_OICR_CTL ;
 int PFINT_OICR_CTL_CAUSE_ENA_M ;
 int PFINT_OICR_CTL_MSIX_INDX_M ;
 int ice_flush (struct ice_hw*) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_ena_ctrlq_interrupts(struct ice_hw *hw, u16 reg_idx)
{
 u32 val;

 val = ((reg_idx & PFINT_OICR_CTL_MSIX_INDX_M) |
        PFINT_OICR_CTL_CAUSE_ENA_M);
 wr32(hw, PFINT_OICR_CTL, val);


 val = ((reg_idx & PFINT_FW_CTL_MSIX_INDX_M) |
        PFINT_FW_CTL_CAUSE_ENA_M);
 wr32(hw, PFINT_FW_CTL, val);


 val = ((reg_idx & PFINT_MBX_CTL_MSIX_INDX_M) |
        PFINT_MBX_CTL_CAUSE_ENA_M);
 wr32(hw, PFINT_MBX_CTL, val);

 ice_flush(hw);
}
