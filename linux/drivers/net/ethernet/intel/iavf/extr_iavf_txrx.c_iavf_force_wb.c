
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iavf_vsi {TYPE_1__* back; } ;
struct iavf_q_vector {int reg_idx; } ;
struct TYPE_2__ {int hw; } ;


 int IAVF_VFINT_DYN_CTLN1 (int ) ;
 int IAVF_VFINT_DYN_CTLN1_INTENA_MASK ;
 int IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK ;
 int IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_MASK ;
 int IAVF_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_MASK ;
 int wr32 (int *,int ,int) ;

void iavf_force_wb(struct iavf_vsi *vsi, struct iavf_q_vector *q_vector)
{
 u32 val = IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
    IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK |
    IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_MASK |
    IAVF_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_MASK
                                             ;

 wr32(&vsi->back->hw,
      IAVF_VFINT_DYN_CTLN1(q_vector->reg_idx),
      val);
}
