
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {int dummy; } ;
struct ena_adapter {scalar_t__ missing_tx_completion_to; int last_monitored_tx_qid; int num_queues; struct ena_ring* rx_ring; struct ena_ring* tx_ring; int flags; } ;


 int ENA_FLAG_DEV_UP ;
 int ENA_FLAG_TRIGGER_RESET ;
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ;
 int ENA_MONITORED_TX_QUEUES ;
 int check_for_rx_interrupt_queue (struct ena_adapter*,struct ena_ring*) ;
 int check_missing_comp_in_tx_queue (struct ena_adapter*,struct ena_ring*) ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_for_missing_completions(struct ena_adapter *adapter)
{
 struct ena_ring *tx_ring;
 struct ena_ring *rx_ring;
 int i, budget, rc;


 smp_rmb();

 if (!test_bit(ENA_FLAG_DEV_UP, &adapter->flags))
  return;

 if (test_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags))
  return;

 if (adapter->missing_tx_completion_to == ENA_HW_HINTS_NO_TIMEOUT)
  return;

 budget = ENA_MONITORED_TX_QUEUES;

 for (i = adapter->last_monitored_tx_qid; i < adapter->num_queues; i++) {
  tx_ring = &adapter->tx_ring[i];
  rx_ring = &adapter->rx_ring[i];

  rc = check_missing_comp_in_tx_queue(adapter, tx_ring);
  if (unlikely(rc))
   return;

  rc = check_for_rx_interrupt_queue(adapter, rx_ring);
  if (unlikely(rc))
   return;

  budget--;
  if (!budget)
   break;
 }

 adapter->last_monitored_tx_qid = i % adapter->num_queues;
}
