
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ena_tx_buffer {unsigned long last_jiffies; int print_once; } ;
struct TYPE_2__ {scalar_t__ missed_tx; } ;
struct ena_ring {int ring_size; int syncp; TYPE_1__ tx_stats; int qid; int first_interrupt; struct ena_tx_buffer* tx_buffer_info; } ;
struct ena_adapter {int missing_tx_completion_to; int flags; int reset_reason; scalar_t__ missing_tx_completion_threshold; int netdev; } ;


 int EIO ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_MISS_INTERRUPT ;
 int ENA_REGS_RESET_MISS_TX_CMPL ;
 int netif_err (struct ena_adapter*,int ,int ,char*,scalar_t__,...) ;
 int netif_notice (struct ena_adapter*,int ,int ,char*,int ,int) ;
 int set_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int time_is_before_jiffies (unsigned long) ;
 int tx_err ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_missing_comp_in_tx_queue(struct ena_adapter *adapter,
       struct ena_ring *tx_ring)
{
 struct ena_tx_buffer *tx_buf;
 unsigned long last_jiffies;
 u32 missed_tx = 0;
 int i, rc = 0;

 for (i = 0; i < tx_ring->ring_size; i++) {
  tx_buf = &tx_ring->tx_buffer_info[i];
  last_jiffies = tx_buf->last_jiffies;

  if (last_jiffies == 0)

   continue;

  if (unlikely(!tx_ring->first_interrupt && time_is_before_jiffies(last_jiffies +
        2 * adapter->missing_tx_completion_to))) {



   netif_err(adapter, tx_err, adapter->netdev,
      "Potential MSIX issue on Tx side Queue = %d. Reset the device\n",
      tx_ring->qid);
   adapter->reset_reason = ENA_REGS_RESET_MISS_INTERRUPT;
   smp_mb__before_atomic();
   set_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
   return -EIO;
  }

  if (unlikely(time_is_before_jiffies(last_jiffies +
    adapter->missing_tx_completion_to))) {
   if (!tx_buf->print_once)
    netif_notice(adapter, tx_err, adapter->netdev,
          "Found a Tx that wasn't completed on time, qid %d, index %d.\n",
          tx_ring->qid, i);

   tx_buf->print_once = 1;
   missed_tx++;
  }
 }

 if (unlikely(missed_tx > adapter->missing_tx_completion_threshold)) {
  netif_err(adapter, tx_err, adapter->netdev,
     "The number of lost tx completions is above the threshold (%d > %d). Reset the device\n",
     missed_tx,
     adapter->missing_tx_completion_threshold);
  adapter->reset_reason =
   ENA_REGS_RESET_MISS_TX_CMPL;
  set_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
  rc = -EIO;
 }

 u64_stats_update_begin(&tx_ring->syncp);
 tx_ring->tx_stats.missed_tx = missed_tx;
 u64_stats_update_end(&tx_ring->syncp);

 return rc;
}
