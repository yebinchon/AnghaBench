
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct ice_vsi {int num_q_vectors; struct ice_q_vector** q_vectors; struct ice_pf* back; } ;
struct TYPE_4__ {int itr_idx; } ;
struct TYPE_3__ {int itr_idx; } ;
struct ice_q_vector {int num_ring_tx; int num_ring_rx; TYPE_2__ rx; TYPE_1__ tx; int intrl; int reg_idx; } ;
struct ice_hw {int intrl_gran; } ;
struct ice_pf {struct ice_hw hw; } ;


 int GLINT_RATE (int ) ;
 int ice_cfg_itr (struct ice_hw*,struct ice_q_vector*) ;
 int ice_cfg_rxq_interrupt (struct ice_vsi*,scalar_t__,int ,int ) ;
 int ice_cfg_txq_interrupt (struct ice_vsi*,scalar_t__,int ,int ) ;
 int ice_intrl_usec_to_reg (int ,int ) ;
 int wr32 (struct ice_hw*,int ,int ) ;

void ice_vsi_cfg_msix(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 struct ice_hw *hw = &pf->hw;
 u32 txq = 0, rxq = 0;
 int i, q;

 for (i = 0; i < vsi->num_q_vectors; i++) {
  struct ice_q_vector *q_vector = vsi->q_vectors[i];
  u16 reg_idx = q_vector->reg_idx;

  ice_cfg_itr(hw, q_vector);

  wr32(hw, GLINT_RATE(reg_idx),
       ice_intrl_usec_to_reg(q_vector->intrl, hw->intrl_gran));
  for (q = 0; q < q_vector->num_ring_tx; q++) {
   ice_cfg_txq_interrupt(vsi, txq, reg_idx,
           q_vector->tx.itr_idx);
   txq++;
  }

  for (q = 0; q < q_vector->num_ring_rx; q++) {
   ice_cfg_rxq_interrupt(vsi, rxq, reg_idx,
           q_vector->rx.itr_idx);
   rxq++;
  }
 }
}
