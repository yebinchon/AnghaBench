
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ring_container {void* current_itr; int itr_idx; void* target_itr; void* next_update; scalar_t__ itr_setting; } ;
struct ice_q_vector {int reg_idx; struct ice_ring_container tx; scalar_t__ num_ring_tx; struct ice_ring_container rx; scalar_t__ num_ring_rx; } ;
struct ice_hw {int dummy; } ;


 int GLINT_ITR (int ,int ) ;
 scalar_t__ ICE_DFLT_RX_ITR ;
 scalar_t__ ICE_DFLT_TX_ITR ;
 int ICE_ITR_GRAN_S ;
 int ITR_REG_ALIGN (void*) ;
 void* ITR_TO_REG (scalar_t__) ;
 int ice_cfg_itr_gran (struct ice_hw*) ;
 void* jiffies ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void
ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector)
{
 ice_cfg_itr_gran(hw);

 if (q_vector->num_ring_rx) {
  struct ice_ring_container *rc = &q_vector->rx;


  if (!rc->itr_setting)
   rc->itr_setting = ICE_DFLT_RX_ITR;

  rc->target_itr = ITR_TO_REG(rc->itr_setting);
  rc->next_update = jiffies + 1;
  rc->current_itr = rc->target_itr;
  wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
       ITR_REG_ALIGN(rc->current_itr) >> ICE_ITR_GRAN_S);
 }

 if (q_vector->num_ring_tx) {
  struct ice_ring_container *rc = &q_vector->tx;


  if (!rc->itr_setting)
   rc->itr_setting = ICE_DFLT_TX_ITR;

  rc->target_itr = ITR_TO_REG(rc->itr_setting);
  rc->next_update = jiffies + 1;
  rc->current_itr = rc->target_itr;
  wr32(hw, GLINT_ITR(rc->itr_idx, q_vector->reg_idx),
       ITR_REG_ALIGN(rc->current_itr) >> ICE_ITR_GRAN_S);
 }
}
