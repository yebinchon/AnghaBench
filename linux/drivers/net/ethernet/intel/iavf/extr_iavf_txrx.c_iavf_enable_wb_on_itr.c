
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iavf_vsi {TYPE_3__* back; } ;
struct TYPE_5__ {TYPE_1__* ring; } ;
struct iavf_q_vector {int arm_wb_state; int reg_idx; TYPE_2__ tx; } ;
struct TYPE_6__ {int hw; } ;
struct TYPE_4__ {int flags; } ;


 int IAVF_TXR_FLAGS_WB_ON_ITR ;
 int IAVF_VFINT_DYN_CTLN1 (int ) ;
 int IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK ;
 int IAVF_VFINT_DYN_CTLN1_WB_ON_ITR_MASK ;
 int wr32 (int *,int ,int) ;

__attribute__((used)) static void iavf_enable_wb_on_itr(struct iavf_vsi *vsi,
      struct iavf_q_vector *q_vector)
{
 u16 flags = q_vector->tx.ring[0].flags;
 u32 val;

 if (!(flags & IAVF_TXR_FLAGS_WB_ON_ITR))
  return;

 if (q_vector->arm_wb_state)
  return;

 val = IAVF_VFINT_DYN_CTLN1_WB_ON_ITR_MASK |
       IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK;

 wr32(&vsi->back->hw,
      IAVF_VFINT_DYN_CTLN1(q_vector->reg_idx), val);
 q_vector->arm_wb_state = 1;
}
