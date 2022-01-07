
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ice_hw {int dummy; } ;
struct ice_pf {int oicr_idx; struct ice_hw hw; } ;


 int GLINT_DYN_CTL (int ) ;
 int GLINT_DYN_CTL_INTENA_MSK_M ;
 int GLINT_DYN_CTL_SW_ITR_INDX_M ;
 int PFINT_OICR ;
 int PFINT_OICR_ECC_ERR_M ;
 int PFINT_OICR_ENA ;
 int PFINT_OICR_GRST_M ;
 int PFINT_OICR_HMC_ERR_M ;
 int PFINT_OICR_MAL_DETECT_M ;
 int PFINT_OICR_PCI_EXCEPTION_M ;
 int PFINT_OICR_PE_CRITERR_M ;
 int PFINT_OICR_VFLR_M ;
 int rd32 (struct ice_hw*,int ) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_ena_misc_vector(struct ice_pf *pf)
{
 struct ice_hw *hw = &pf->hw;
 u32 val;


 wr32(hw, PFINT_OICR_ENA, 0);
 rd32(hw, PFINT_OICR);

 val = (PFINT_OICR_ECC_ERR_M |
        PFINT_OICR_MAL_DETECT_M |
        PFINT_OICR_GRST_M |
        PFINT_OICR_PCI_EXCEPTION_M |
        PFINT_OICR_VFLR_M |
        PFINT_OICR_HMC_ERR_M |
        PFINT_OICR_PE_CRITERR_M);

 wr32(hw, PFINT_OICR_ENA, val);


 wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
      GLINT_DYN_CTL_SW_ITR_INDX_M | GLINT_DYN_CTL_INTENA_MSK_M);
}
