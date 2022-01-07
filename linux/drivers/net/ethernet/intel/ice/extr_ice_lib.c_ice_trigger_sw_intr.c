
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_q_vector {int reg_idx; } ;
struct ice_hw {int dummy; } ;


 int GLINT_DYN_CTL (int ) ;
 int GLINT_DYN_CTL_INTENA_M ;
 int GLINT_DYN_CTL_ITR_INDX_S ;
 int GLINT_DYN_CTL_SWINT_TRIG_M ;
 int ICE_ITR_NONE ;
 int wr32 (struct ice_hw*,int ,int) ;

void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector *q_vector)
{
 wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx),
      (ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S) |
      GLINT_DYN_CTL_SWINT_TRIG_M |
      GLINT_DYN_CTL_INTENA_M);
}
