
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tid_tbl_ptr; int ra_list_spinlock; } ;
struct mwifiex_private {int ack_status_frames; int ack_status_lock; int rx_reorder_tbl_lock; int tx_ba_stream_tbl_lock; int bypass_txq; int tdls_txq; int auto_tdls_list; int sta_list; int rx_reorder_tbl_ptr; int tx_ba_stream_tbl_ptr; TYPE_3__ wmm; int auto_tdls_lock; int sta_list_spinlock; int curr_bcn_buf_lock; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; TYPE_1__* bss_prio_tbl; int tx_data_q; int rx_data_q; int rx_proc_lock; int scan_pending_q_lock; int cmd_pending_q_lock; int cmd_free_q_lock; int scan_pending_q; int cmd_pending_q; int cmd_free_q; int queue_lock; int mwifiex_cmd_lock; int main_proc_lock; int int_lock; } ;
typedef size_t s32 ;
struct TYPE_5__ {int ra_list; } ;
struct TYPE_4__ {int bss_prio_lock; int bss_prio_head; } ;


 int INIT_LIST_HEAD (int *) ;
 size_t MAX_NUM_TID ;
 int idr_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

int mwifiex_init_lock_list(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 s32 i, j;

 spin_lock_init(&adapter->int_lock);
 spin_lock_init(&adapter->main_proc_lock);
 spin_lock_init(&adapter->mwifiex_cmd_lock);
 spin_lock_init(&adapter->queue_lock);
 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   priv = adapter->priv[i];
   spin_lock_init(&priv->wmm.ra_list_spinlock);
   spin_lock_init(&priv->curr_bcn_buf_lock);
   spin_lock_init(&priv->sta_list_spinlock);
   spin_lock_init(&priv->auto_tdls_lock);
  }
 }


 INIT_LIST_HEAD(&adapter->cmd_free_q);

 INIT_LIST_HEAD(&adapter->cmd_pending_q);

 INIT_LIST_HEAD(&adapter->scan_pending_q);

 spin_lock_init(&adapter->cmd_free_q_lock);
 spin_lock_init(&adapter->cmd_pending_q_lock);
 spin_lock_init(&adapter->scan_pending_q_lock);
 spin_lock_init(&adapter->rx_proc_lock);

 skb_queue_head_init(&adapter->rx_data_q);
 skb_queue_head_init(&adapter->tx_data_q);

 for (i = 0; i < adapter->priv_num; ++i) {
  INIT_LIST_HEAD(&adapter->bss_prio_tbl[i].bss_prio_head);
  spin_lock_init(&adapter->bss_prio_tbl[i].bss_prio_lock);
 }

 for (i = 0; i < adapter->priv_num; i++) {
  if (!adapter->priv[i])
   continue;
  priv = adapter->priv[i];
  for (j = 0; j < MAX_NUM_TID; ++j)
   INIT_LIST_HEAD(&priv->wmm.tid_tbl_ptr[j].ra_list);
  INIT_LIST_HEAD(&priv->tx_ba_stream_tbl_ptr);
  INIT_LIST_HEAD(&priv->rx_reorder_tbl_ptr);
  INIT_LIST_HEAD(&priv->sta_list);
  INIT_LIST_HEAD(&priv->auto_tdls_list);
  skb_queue_head_init(&priv->tdls_txq);
  skb_queue_head_init(&priv->bypass_txq);

  spin_lock_init(&priv->tx_ba_stream_tbl_lock);
  spin_lock_init(&priv->rx_reorder_tbl_lock);

  spin_lock_init(&priv->ack_status_lock);
  idr_init(&priv->ack_status_frames);
 }

 return 0;
}
