
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_ring {int itr_setting; int * vsi; struct iavf_ring* next; struct iavf_q_vector* q_vector; } ;
struct TYPE_2__ {int target_itr; int current_itr; scalar_t__ next_update; int count; struct iavf_ring* ring; } ;
struct iavf_q_vector {TYPE_1__ tx; int reg_idx; int num_ringpairs; } ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int vsi; struct iavf_hw hw; struct iavf_ring* tx_rings; struct iavf_q_vector* q_vectors; } ;


 int IAVF_TX_ITR ;
 int IAVF_VFINT_ITRN1 (int ,int ) ;
 int ITR_TO_REG (int ) ;
 scalar_t__ jiffies ;
 int wr32 (struct iavf_hw*,int ,int) ;

__attribute__((used)) static void
iavf_map_vector_to_txq(struct iavf_adapter *adapter, int v_idx, int t_idx)
{
 struct iavf_q_vector *q_vector = &adapter->q_vectors[v_idx];
 struct iavf_ring *tx_ring = &adapter->tx_rings[t_idx];
 struct iavf_hw *hw = &adapter->hw;

 tx_ring->q_vector = q_vector;
 tx_ring->next = q_vector->tx.ring;
 tx_ring->vsi = &adapter->vsi;
 q_vector->tx.ring = tx_ring;
 q_vector->tx.count++;
 q_vector->tx.next_update = jiffies + 1;
 q_vector->tx.target_itr = ITR_TO_REG(tx_ring->itr_setting);
 q_vector->num_ringpairs++;
 wr32(hw, IAVF_VFINT_ITRN1(IAVF_TX_ITR, q_vector->reg_idx),
      q_vector->tx.target_itr >> 1);
 q_vector->tx.current_itr = q_vector->tx.target_itr;
}
