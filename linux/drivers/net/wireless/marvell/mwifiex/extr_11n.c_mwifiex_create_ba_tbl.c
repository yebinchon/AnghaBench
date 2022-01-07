
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_tx_ba_stream_tbl {int tid; int ba_status; int list; int ra; } ;
struct mwifiex_ra_list_tbl {int ba_status; int amsdu_in_ampdu; } ;
struct mwifiex_private {int tx_ba_stream_tbl_lock; int tx_ba_stream_tbl_ptr; } ;
typedef enum mwifiex_ba_status { ____Placeholder_mwifiex_ba_status } mwifiex_ba_status ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct mwifiex_tx_ba_stream_tbl* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int ) ;
 int mwifiex_get_ba_tbl (struct mwifiex_private*,int,int *) ;
 int mwifiex_wmm_downgrade_tid (struct mwifiex_private*,int) ;
 struct mwifiex_ra_list_tbl* mwifiex_wmm_get_ralist_node (struct mwifiex_private*,int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_create_ba_tbl(struct mwifiex_private *priv, u8 *ra, int tid,
      enum mwifiex_ba_status ba_status)
{
 struct mwifiex_tx_ba_stream_tbl *new_node;
 struct mwifiex_ra_list_tbl *ra_list;
 int tid_down;

 if (!mwifiex_get_ba_tbl(priv, tid, ra)) {
  new_node = kzalloc(sizeof(struct mwifiex_tx_ba_stream_tbl),
       GFP_ATOMIC);
  if (!new_node)
   return;

  tid_down = mwifiex_wmm_downgrade_tid(priv, tid);
  ra_list = mwifiex_wmm_get_ralist_node(priv, tid_down, ra);
  if (ra_list) {
   ra_list->ba_status = ba_status;
   ra_list->amsdu_in_ampdu = 0;
  }
  INIT_LIST_HEAD(&new_node->list);

  new_node->tid = tid;
  new_node->ba_status = ba_status;
  memcpy(new_node->ra, ra, ETH_ALEN);

  spin_lock_bh(&priv->tx_ba_stream_tbl_lock);
  list_add_tail(&new_node->list, &priv->tx_ba_stream_tbl_ptr);
  spin_unlock_bh(&priv->tx_ba_stream_tbl_lock);
 }
}
