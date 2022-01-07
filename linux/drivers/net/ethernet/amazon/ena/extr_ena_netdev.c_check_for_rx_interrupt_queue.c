
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {scalar_t__ no_interrupt_event_cnt; int qid; int ena_com_io_cq; int first_interrupt; } ;
struct ena_adapter {int flags; int reset_reason; int netdev; } ;


 int EIO ;
 int ENA_FLAG_TRIGGER_RESET ;
 scalar_t__ ENA_MAX_NO_INTERRUPT_ITERATIONS ;
 int ENA_REGS_RESET_MISS_INTERRUPT ;
 scalar_t__ ena_com_cq_empty (int ) ;
 scalar_t__ likely (int ) ;
 int netif_err (struct ena_adapter*,int ,int ,char*,int ) ;
 int rx_err ;
 int set_bit (int ,int *) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static int check_for_rx_interrupt_queue(struct ena_adapter *adapter,
     struct ena_ring *rx_ring)
{
 if (likely(rx_ring->first_interrupt))
  return 0;

 if (ena_com_cq_empty(rx_ring->ena_com_io_cq))
  return 0;

 rx_ring->no_interrupt_event_cnt++;

 if (rx_ring->no_interrupt_event_cnt == ENA_MAX_NO_INTERRUPT_ITERATIONS) {
  netif_err(adapter, rx_err, adapter->netdev,
     "Potential MSIX issue on Rx side Queue = %d. Reset the device\n",
     rx_ring->qid);
  adapter->reset_reason = ENA_REGS_RESET_MISS_INTERRUPT;
  smp_mb__before_atomic();
  set_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
  return -EIO;
 }

 return 0;
}
