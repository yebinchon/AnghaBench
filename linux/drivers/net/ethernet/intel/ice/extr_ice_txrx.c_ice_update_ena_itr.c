
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ice_vsi {TYPE_1__* back; int state; } ;
struct ice_ring_container {int target_itr; int itr_setting; int current_itr; int itr_idx; } ;
struct ice_q_vector {scalar_t__ itr_countdown; int reg_idx; struct ice_vsi* vsi; struct ice_ring_container rx; struct ice_ring_container tx; } ;
struct TYPE_2__ {int hw; } ;


 int GLINT_DYN_CTL (int ) ;
 scalar_t__ ICE_IN_WB_ON_ITR_MODE ;
 int ICE_ITR_DYNAMIC ;
 int ICE_ITR_NONE ;
 int ICE_WB_ON_ITR_USECS ;
 void* ITR_COUNTDOWN_START ;
 int __ICE_DOWN ;
 int ice_buildreg_itr (int ,int) ;
 int ice_update_itr (struct ice_q_vector*,struct ice_ring_container*) ;
 int test_bit (int ,int ) ;
 int wr32 (int *,int ,int ) ;

__attribute__((used)) static void ice_update_ena_itr(struct ice_q_vector *q_vector)
{
 struct ice_ring_container *tx = &q_vector->tx;
 struct ice_ring_container *rx = &q_vector->rx;
 struct ice_vsi *vsi = q_vector->vsi;
 u32 itr_val;





 if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE) {
  itr_val = ice_buildreg_itr(rx->itr_idx, ICE_WB_ON_ITR_USECS);
  wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx), itr_val);

  rx->target_itr = rx->itr_setting;

  rx->current_itr = ICE_WB_ON_ITR_USECS |
   (rx->itr_setting & ICE_ITR_DYNAMIC);

  q_vector->itr_countdown = 0;
  return;
 }


 ice_update_itr(q_vector, tx);
 ice_update_itr(q_vector, rx);
 if (rx->target_itr < rx->current_itr) {

  itr_val = ice_buildreg_itr(rx->itr_idx, rx->target_itr);
  rx->current_itr = rx->target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else if ((tx->target_itr < tx->current_itr) ||
     ((rx->target_itr - rx->current_itr) <
      (tx->target_itr - tx->current_itr))) {



  itr_val = ice_buildreg_itr(tx->itr_idx, tx->target_itr);
  tx->current_itr = tx->target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else if (rx->current_itr != rx->target_itr) {

  itr_val = ice_buildreg_itr(rx->itr_idx, rx->target_itr);
  rx->current_itr = rx->target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else {

  itr_val = ice_buildreg_itr(ICE_ITR_NONE, 0);
  if (q_vector->itr_countdown)
   q_vector->itr_countdown--;
 }

 if (!test_bit(__ICE_DOWN, q_vector->vsi->state))
  wr32(&q_vector->vsi->back->hw,
       GLINT_DYN_CTL(q_vector->reg_idx),
       itr_val);
}
