
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct ice_vsi {int num_q_vectors; int * rxq_map; int * txq_map; struct ice_q_vector** q_vectors; struct ice_pf* back; } ;
struct ice_q_vector {int num_ring_tx; int num_ring_rx; int reg_idx; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;


 int GLINT_ITR (int ,int ) ;
 int ICE_IDX_ITR0 ;
 int ICE_IDX_ITR1 ;
 int QINT_RQCTL (int ) ;
 int QINT_TQCTL (int ) ;
 int ice_flush (struct ice_hw*) ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static void ice_vsi_release_msix(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 struct ice_hw *hw = &pf->hw;
 u32 txq = 0;
 u32 rxq = 0;
 int i, q;

 for (i = 0; i < vsi->num_q_vectors; i++) {
  struct ice_q_vector *q_vector = vsi->q_vectors[i];
  u16 reg_idx = q_vector->reg_idx;

  wr32(hw, GLINT_ITR(ICE_IDX_ITR0, reg_idx), 0);
  wr32(hw, GLINT_ITR(ICE_IDX_ITR1, reg_idx), 0);
  for (q = 0; q < q_vector->num_ring_tx; q++) {
   wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), 0);
   txq++;
  }

  for (q = 0; q < q_vector->num_ring_rx; q++) {
   wr32(hw, QINT_RQCTL(vsi->rxq_map[rxq]), 0);
   rxq++;
  }
 }

 ice_flush(hw);
}
