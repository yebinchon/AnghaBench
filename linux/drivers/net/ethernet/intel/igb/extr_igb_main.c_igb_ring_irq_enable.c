
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ring; } ;
struct igb_q_vector {int eims_value; TYPE_1__ rx; struct igb_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int rx_itr_setting; int tx_itr_setting; int num_q_vectors; int flags; int state; int vf_data; struct e1000_hw hw; } ;


 int E1000_EIMS ;
 int IGB_FLAG_HAS_MSIX ;
 int __IGB_DOWN ;
 int igb_irq_enable (struct igb_adapter*) ;
 int igb_set_itr (struct igb_q_vector*) ;
 int igb_update_ring_itr (struct igb_q_vector*) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_ring_irq_enable(struct igb_q_vector *q_vector)
{
 struct igb_adapter *adapter = q_vector->adapter;
 struct e1000_hw *hw = &adapter->hw;

 if ((q_vector->rx.ring && (adapter->rx_itr_setting & 3)) ||
     (!q_vector->rx.ring && (adapter->tx_itr_setting & 3))) {
  if ((adapter->num_q_vectors == 1) && !adapter->vf_data)
   igb_set_itr(q_vector);
  else
   igb_update_ring_itr(q_vector);
 }

 if (!test_bit(__IGB_DOWN, &adapter->state)) {
  if (adapter->flags & IGB_FLAG_HAS_MSIX)
   wr32(E1000_EIMS, q_vector->eims_value);
  else
   igb_irq_enable(adapter);
 }
}
