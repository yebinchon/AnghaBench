
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {TYPE_1__* back; } ;
struct i40e_q_vector {int reg_idx; } ;
struct TYPE_2__ {int flags; int hw; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTL0_INTENA_MASK ;
 int I40E_PFINT_DYN_CTL0_ITR_INDX_MASK ;
 int I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK ;
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK ;
 int I40E_PFINT_DYN_CTLN (int ) ;
 int I40E_PFINT_DYN_CTLN_INTENA_MASK ;
 int I40E_PFINT_DYN_CTLN_ITR_INDX_MASK ;
 int I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK ;
 int I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK ;
 int wr32 (int *,int ,int) ;

void i40e_force_wb(struct i40e_vsi *vsi, struct i40e_q_vector *q_vector)
{
 if (vsi->back->flags & I40E_FLAG_MSIX_ENABLED) {
  u32 val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
     I40E_PFINT_DYN_CTLN_ITR_INDX_MASK |
     I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK |
     I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK;


  wr32(&vsi->back->hw,
       I40E_PFINT_DYN_CTLN(q_vector->reg_idx), val);
 } else {
  u32 val = I40E_PFINT_DYN_CTL0_INTENA_MASK |
     I40E_PFINT_DYN_CTL0_ITR_INDX_MASK |
     I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK |
     I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK;


  wr32(&vsi->back->hw, I40E_PFINT_DYN_CTL0, val);
 }
}
