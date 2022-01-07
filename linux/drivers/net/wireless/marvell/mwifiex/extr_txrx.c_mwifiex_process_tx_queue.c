
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {scalar_t__ tx_lock_flag; scalar_t__ data_sent; int tx_data_q; } ;


 scalar_t__ mwifiex_dequeue_tx_queue (struct mwifiex_adapter*) ;
 int skb_queue_empty (int *) ;

void
mwifiex_process_tx_queue(struct mwifiex_adapter *adapter)
{
 do {
  if (adapter->data_sent || adapter->tx_lock_flag)
   break;
  if (mwifiex_dequeue_tx_queue(adapter))
   break;
 } while (!skb_queue_empty(&adapter->tx_data_q));
}
