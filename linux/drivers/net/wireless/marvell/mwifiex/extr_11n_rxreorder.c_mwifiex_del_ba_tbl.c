
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mwifiex_tx_ba_stream_tbl {int dummy; } ;
struct mwifiex_rx_reorder_tbl {int dummy; } ;
struct mwifiex_ra_list_tbl {int amsdu_in_ampdu; int ba_status; } ;
struct mwifiex_private {int tx_ba_stream_tbl_lock; int adapter; } ;


 int BA_SETUP_NONE ;
 int EVENT ;
 scalar_t__ TYPE_DELBA_RECEIVE ;
 int mwifiex_11n_delete_tx_ba_stream_tbl_entry (struct mwifiex_private*,struct mwifiex_tx_ba_stream_tbl*) ;
 struct mwifiex_rx_reorder_tbl* mwifiex_11n_get_rx_reorder_tbl (struct mwifiex_private*,int,scalar_t__*) ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 int mwifiex_del_rx_reorder_entry (struct mwifiex_private*,struct mwifiex_rx_reorder_tbl*) ;
 struct mwifiex_tx_ba_stream_tbl* mwifiex_get_ba_tbl (struct mwifiex_private*,int,scalar_t__*) ;
 int mwifiex_wmm_downgrade_tid (struct mwifiex_private*,int) ;
 struct mwifiex_ra_list_tbl* mwifiex_wmm_get_ralist_node (struct mwifiex_private*,int,scalar_t__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void
mwifiex_del_ba_tbl(struct mwifiex_private *priv, int tid, u8 *peer_mac,
     u8 type, int initiator)
{
 struct mwifiex_rx_reorder_tbl *tbl;
 struct mwifiex_tx_ba_stream_tbl *ptx_tbl;
 struct mwifiex_ra_list_tbl *ra_list;
 u8 cleanup_rx_reorder_tbl;
 int tid_down;

 if (type == TYPE_DELBA_RECEIVE)
  cleanup_rx_reorder_tbl = (initiator) ? 1 : 0;
 else
  cleanup_rx_reorder_tbl = (initiator) ? 0 : 1;

 mwifiex_dbg(priv->adapter, EVENT, "event: DELBA: %pM tid=%d initiator=%d\n",
      peer_mac, tid, initiator);

 if (cleanup_rx_reorder_tbl) {
  tbl = mwifiex_11n_get_rx_reorder_tbl(priv, tid,
         peer_mac);
  if (!tbl) {
   mwifiex_dbg(priv->adapter, EVENT,
        "event: TID, TA not found in table\n");
   return;
  }
  mwifiex_del_rx_reorder_entry(priv, tbl);
 } else {
  ptx_tbl = mwifiex_get_ba_tbl(priv, tid, peer_mac);
  if (!ptx_tbl) {
   mwifiex_dbg(priv->adapter, EVENT,
        "event: TID, RA not found in table\n");
   return;
  }

  tid_down = mwifiex_wmm_downgrade_tid(priv, tid);
  ra_list = mwifiex_wmm_get_ralist_node(priv, tid_down, peer_mac);
  if (ra_list) {
   ra_list->amsdu_in_ampdu = 0;
   ra_list->ba_status = BA_SETUP_NONE;
  }
  spin_lock_bh(&priv->tx_ba_stream_tbl_lock);
  mwifiex_11n_delete_tx_ba_stream_tbl_entry(priv, ptx_tbl);
  spin_unlock_bh(&priv->tx_ba_stream_tbl_lock);
 }
}
