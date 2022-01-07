
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct mwifiex_txinfo {int flags; int aggr_num; } ;
struct mwifiex_tx_param {int next_pkt_len; } ;
struct mwifiex_adapter {int tx_data_q; int tx_queued; } ;


 int MWIFIEX_BUF_FLAG_AGGR_PKT ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 int atomic_dec (int *) ;
 int atomic_sub (int ,int *) ;
 int mwifiex_host_to_card (struct mwifiex_adapter*,struct sk_buff*,struct mwifiex_tx_param*) ;
 int mwifiex_wmm_lists_empty (struct mwifiex_adapter*) ;
 struct sk_buff* skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static int
mwifiex_dequeue_tx_queue(struct mwifiex_adapter *adapter)
{
 struct sk_buff *skb, *skb_next;
 struct mwifiex_txinfo *tx_info;
 struct mwifiex_tx_param tx_param;

 skb = skb_dequeue(&adapter->tx_data_q);
 if (!skb)
  return -1;

 tx_info = MWIFIEX_SKB_TXCB(skb);
 if (tx_info->flags & MWIFIEX_BUF_FLAG_AGGR_PKT)
  atomic_sub(tx_info->aggr_num, &adapter->tx_queued);
 else
  atomic_dec(&adapter->tx_queued);

 if (!skb_queue_empty(&adapter->tx_data_q))
  skb_next = skb_peek(&adapter->tx_data_q);
 else
  skb_next = ((void*)0);
 tx_param.next_pkt_len = ((skb_next) ? skb_next->len : 0);
 if (!tx_param.next_pkt_len) {
  if (!mwifiex_wmm_lists_empty(adapter))
   tx_param.next_pkt_len = 1;
 }
 return mwifiex_host_to_card(adapter, skb, &tx_param);
}
