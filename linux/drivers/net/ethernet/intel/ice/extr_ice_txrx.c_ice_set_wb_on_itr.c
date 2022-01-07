
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {TYPE_1__* back; } ;
struct ice_q_vector {scalar_t__ itr_countdown; int reg_idx; scalar_t__ num_ring_tx; scalar_t__ num_ring_rx; struct ice_vsi* vsi; } ;
struct TYPE_2__ {int hw; } ;


 int GLINT_DYN_CTL (int ) ;
 int ICE_GLINT_DYN_CTL_WB_ON_ITR (int ,int ) ;
 scalar_t__ ICE_IN_WB_ON_ITR_MODE ;
 int ICE_RX_ITR ;
 int ICE_TX_ITR ;
 int ICE_WB_ON_ITR_USECS ;
 int wr32 (int *,int ,int ) ;

__attribute__((used)) static void ice_set_wb_on_itr(struct ice_q_vector *q_vector)
{
 struct ice_vsi *vsi = q_vector->vsi;


 if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE)
  return;

 if (q_vector->num_ring_rx)
  wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
       ICE_GLINT_DYN_CTL_WB_ON_ITR(ICE_WB_ON_ITR_USECS,
       ICE_RX_ITR));

 if (q_vector->num_ring_tx)
  wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
       ICE_GLINT_DYN_CTL_WB_ON_ITR(ICE_WB_ON_ITR_USECS,
       ICE_TX_ITR));

 q_vector->itr_countdown = ICE_IN_WB_ON_ITR_MODE;
}
