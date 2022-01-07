
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523 {int hw; int tx_nr_total; int tx_flush_waitq; int tx_wd_timer; int tx_nr_pending; } ;


 scalar_t__ AR5523_TX_DATA_RESTART_COUNT ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int atomic_dec (int *) ;
 int atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int del_timer (int *) ;
 int ieee80211_wake_queues (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ar5523_data_tx_pkt_put(struct ar5523 *ar)
{
 atomic_dec(&ar->tx_nr_total);
 if (!atomic_dec_return(&ar->tx_nr_pending)) {
  del_timer(&ar->tx_wd_timer);
  wake_up(&ar->tx_flush_waitq);
 }

 if (atomic_read(&ar->tx_nr_total) < AR5523_TX_DATA_RESTART_COUNT) {
  ar5523_dbg(ar, "restart tx queue\n");
  ieee80211_wake_queues(ar->hw);
 }
}
