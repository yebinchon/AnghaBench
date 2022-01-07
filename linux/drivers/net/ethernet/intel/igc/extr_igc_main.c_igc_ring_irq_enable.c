
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ring; } ;
struct igc_q_vector {int eims_value; TYPE_1__ rx; struct igc_adapter* adapter; } ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int rx_itr_setting; int tx_itr_setting; int num_q_vectors; scalar_t__ msix_entries; int state; struct igc_hw hw; } ;


 int IGC_EIMS ;
 int __IGC_DOWN ;
 int igc_irq_enable (struct igc_adapter*) ;
 int igc_set_itr (struct igc_q_vector*) ;
 int igc_update_ring_itr (struct igc_q_vector*) ;
 int test_bit (int ,int *) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igc_ring_irq_enable(struct igc_q_vector *q_vector)
{
 struct igc_adapter *adapter = q_vector->adapter;
 struct igc_hw *hw = &adapter->hw;

 if ((q_vector->rx.ring && (adapter->rx_itr_setting & 3)) ||
     (!q_vector->rx.ring && (adapter->tx_itr_setting & 3))) {
  if (adapter->num_q_vectors == 1)
   igc_set_itr(q_vector);
  else
   igc_update_ring_itr(q_vector);
 }

 if (!test_bit(__IGC_DOWN, &adapter->state)) {
  if (adapter->msix_entries)
   wr32(IGC_EIMS, q_vector->eims_value);
  else
   igc_irq_enable(adapter);
 }
}
