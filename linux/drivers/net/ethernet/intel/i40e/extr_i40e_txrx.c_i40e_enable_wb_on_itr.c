
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct i40e_vsi {TYPE_1__* back; } ;
struct TYPE_6__ {TYPE_2__* ring; } ;
struct i40e_q_vector {int arm_wb_state; int reg_idx; TYPE_3__ tx; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int flags; int hw; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTL0_ITR_INDX_MASK ;
 int I40E_PFINT_DYN_CTL0_WB_ON_ITR_MASK ;
 int I40E_PFINT_DYN_CTLN (int ) ;
 int I40E_PFINT_DYN_CTLN_ITR_INDX_MASK ;
 int I40E_PFINT_DYN_CTLN_WB_ON_ITR_MASK ;
 int I40E_TXR_FLAGS_WB_ON_ITR ;
 int wr32 (int *,int ,int) ;

__attribute__((used)) static void i40e_enable_wb_on_itr(struct i40e_vsi *vsi,
      struct i40e_q_vector *q_vector)
{
 u16 flags = q_vector->tx.ring[0].flags;
 u32 val;

 if (!(flags & I40E_TXR_FLAGS_WB_ON_ITR))
  return;

 if (q_vector->arm_wb_state)
  return;

 if (vsi->back->flags & I40E_FLAG_MSIX_ENABLED) {
  val = I40E_PFINT_DYN_CTLN_WB_ON_ITR_MASK |
        I40E_PFINT_DYN_CTLN_ITR_INDX_MASK;

  wr32(&vsi->back->hw,
       I40E_PFINT_DYN_CTLN(q_vector->reg_idx),
       val);
 } else {
  val = I40E_PFINT_DYN_CTL0_WB_ON_ITR_MASK |
        I40E_PFINT_DYN_CTL0_ITR_INDX_MASK;

  wr32(&vsi->back->hw, I40E_PFINT_DYN_CTL0, val);
 }
 q_vector->arm_wb_state = 1;
}
