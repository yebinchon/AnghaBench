
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mwifiex_rxinfo {scalar_t__ buf_type; } ;
struct TYPE_2__ {int (* deaggr_pkt ) (struct mwifiex_adapter*,struct sk_buff*) ;int (* submit_rem_rx_urbs ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {int rx_processing; int delay_main_work; scalar_t__ iface_type; int rx_proc_lock; TYPE_1__ if_ops; int rx_pending; int rx_data_q; scalar_t__ rx_locked; } ;


 scalar_t__ LOW_RX_PENDING ;
 struct mwifiex_rxinfo* MWIFIEX_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ MWIFIEX_TYPE_AGGR_DATA ;
 scalar_t__ MWIFIEX_USB ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int mwifiex_handle_rx_packet (struct mwifiex_adapter*,struct sk_buff*) ;
 int mwifiex_queue_main_work (struct mwifiex_adapter*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct mwifiex_adapter*) ;
 int stub2 (struct mwifiex_adapter*,struct sk_buff*) ;

__attribute__((used)) static int mwifiex_process_rx(struct mwifiex_adapter *adapter)
{
 struct sk_buff *skb;
 struct mwifiex_rxinfo *rx_info;

 spin_lock_bh(&adapter->rx_proc_lock);
 if (adapter->rx_processing || adapter->rx_locked) {
  spin_unlock_bh(&adapter->rx_proc_lock);
  goto exit_rx_proc;
 } else {
  adapter->rx_processing = 1;
  spin_unlock_bh(&adapter->rx_proc_lock);
 }


 while ((skb = skb_dequeue(&adapter->rx_data_q))) {
  atomic_dec(&adapter->rx_pending);
  if ((adapter->delay_main_work ||
       adapter->iface_type == MWIFIEX_USB) &&
      (atomic_read(&adapter->rx_pending) < LOW_RX_PENDING)) {
   if (adapter->if_ops.submit_rem_rx_urbs)
    adapter->if_ops.submit_rem_rx_urbs(adapter);
   adapter->delay_main_work = 0;
   mwifiex_queue_main_work(adapter);
  }
  rx_info = MWIFIEX_SKB_RXCB(skb);
  if (rx_info->buf_type == MWIFIEX_TYPE_AGGR_DATA) {
   if (adapter->if_ops.deaggr_pkt)
    adapter->if_ops.deaggr_pkt(adapter, skb);
   dev_kfree_skb_any(skb);
  } else {
   mwifiex_handle_rx_packet(adapter, skb);
  }
 }
 spin_lock_bh(&adapter->rx_proc_lock);
 adapter->rx_processing = 0;
 spin_unlock_bh(&adapter->rx_proc_lock);

exit_rx_proc:
 return 0;
}
