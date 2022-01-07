
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tid_tbl_ptr; } ;
struct mwifiex_private {int auto_tdls_list; int sta_list; int rx_reorder_tbl_ptr; int tx_ba_stream_tbl_ptr; TYPE_3__ wmm; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; TYPE_1__* bss_prio_tbl; int scan_pending_q; int cmd_pending_q; int cmd_free_q; } ;
typedef size_t s32 ;
struct TYPE_5__ {int ra_list; } ;
struct TYPE_4__ {int bss_prio_head; } ;


 size_t MAX_NUM_TID ;
 int list_del (int *) ;

__attribute__((used)) static void mwifiex_invalidate_lists(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 s32 i, j;

 list_del(&adapter->cmd_free_q);
 list_del(&adapter->cmd_pending_q);
 list_del(&adapter->scan_pending_q);

 for (i = 0; i < adapter->priv_num; i++)
  list_del(&adapter->bss_prio_tbl[i].bss_prio_head);

 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   priv = adapter->priv[i];
   for (j = 0; j < MAX_NUM_TID; ++j)
    list_del(&priv->wmm.tid_tbl_ptr[j].ra_list);
   list_del(&priv->tx_ba_stream_tbl_ptr);
   list_del(&priv->rx_reorder_tbl_ptr);
   list_del(&priv->sta_list);
   list_del(&priv->auto_tdls_list);
  }
 }
}
