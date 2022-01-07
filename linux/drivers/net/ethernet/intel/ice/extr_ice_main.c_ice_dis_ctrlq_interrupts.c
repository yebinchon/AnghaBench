
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;


 int PFINT_FW_CTL ;
 int PFINT_FW_CTL_CAUSE_ENA_M ;
 int PFINT_MBX_CTL ;
 int PFINT_MBX_CTL_CAUSE_ENA_M ;
 int PFINT_OICR_CTL ;
 int PFINT_OICR_CTL_CAUSE_ENA_M ;
 int ice_flush (struct ice_hw*) ;
 int rd32 (struct ice_hw*,int ) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_dis_ctrlq_interrupts(struct ice_hw *hw)
{

 wr32(hw, PFINT_FW_CTL,
      rd32(hw, PFINT_FW_CTL) & ~PFINT_FW_CTL_CAUSE_ENA_M);


 wr32(hw, PFINT_MBX_CTL,
      rd32(hw, PFINT_MBX_CTL) & ~PFINT_MBX_CTL_CAUSE_ENA_M);


 wr32(hw, PFINT_OICR_CTL,
      rd32(hw, PFINT_OICR_CTL) & ~PFINT_OICR_CTL_CAUSE_ENA_M);

 ice_flush(hw);
}
