
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mwifiex_rx_reorder_tbl {int win_size; int start_win; struct sk_buff** rx_reorder_ptr; } ;
struct mwifiex_private {int rx_reorder_tbl_lock; } ;


 int MAX_TID_VALUE ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int mwifiex_11n_dispatch_pkt (struct mwifiex_private*,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mwifiex_11n_scan_and_dispatch(struct mwifiex_private *priv,
         struct mwifiex_rx_reorder_tbl *tbl)
{
 struct sk_buff_head list;
 struct sk_buff *skb;
 int i, j, xchg;

 __skb_queue_head_init(&list);
 spin_lock_bh(&priv->rx_reorder_tbl_lock);

 for (i = 0; i < tbl->win_size; ++i) {
  if (!tbl->rx_reorder_ptr[i])
   break;
  skb = tbl->rx_reorder_ptr[i];
  __skb_queue_tail(&list, skb);
  tbl->rx_reorder_ptr[i] = ((void*)0);
 }





 if (i > 0) {
  xchg = tbl->win_size - i;
  for (j = 0; j < xchg; ++j) {
   tbl->rx_reorder_ptr[j] = tbl->rx_reorder_ptr[i + j];
   tbl->rx_reorder_ptr[i + j] = ((void*)0);
  }
 }
 tbl->start_win = (tbl->start_win + i) & (MAX_TID_VALUE - 1);

 spin_unlock_bh(&priv->rx_reorder_tbl_lock);

 while ((skb = __skb_dequeue(&list)))
  mwifiex_11n_dispatch_pkt(priv, skb);
}
