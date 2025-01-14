
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int* ext_capab; } ;
struct ieee80211_mcs_info {int* rx_mask; } ;
struct TYPE_6__ {int cap_info; struct ieee80211_mcs_info mcs; } ;
struct TYPE_9__ {TYPE_3__ extcap; TYPE_1__ ht_capb; } ;
struct mwifiex_sta_node {scalar_t__ tdls_status; int is_11n_enabled; int rx_seq; TYPE_4__ tdls_cap; int * ampdu_sta; int max_amsdu; } ;
struct TYPE_10__ {int ra_list_spinlock; } ;
struct mwifiex_private {TYPE_5__ wmm; int adapter; TYPE_2__* aggr_prio_tbl; } ;
struct TYPE_7__ {int ampdu_user; } ;


 int BA_STREAM_NOT_ALLOWED ;
 int ERROR ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int MAX_NUM_TID ;
 int MSG ;
 int MWIFIEX_TX_DATA_BUF_SIZE_4K ;
 int MWIFIEX_TX_DATA_BUF_SIZE_8K ;
 scalar_t__ TDLS_LINK_TEARDOWN ;
 scalar_t__ TDLS_NOT_SETUP ;
 scalar_t__ TDLS_SETUP_COMPLETE ;
 scalar_t__ TDLS_SETUP_FAILURE ;
 int WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH ;
 int le16_to_cpu (int ) ;
 int memset (int ,int,int) ;
 int mwifiex_11n_cleanup_reorder_tbl (struct mwifiex_private*) ;
 int mwifiex_11n_delete_all_tx_ba_stream_tbl (struct mwifiex_private*) ;
 int mwifiex_auto_tdls_update_peer_status (struct mwifiex_private*,int const*,scalar_t__) ;
 int mwifiex_config_tdls_cs_params (struct mwifiex_private*) ;
 int mwifiex_config_tdls_enable (struct mwifiex_private*) ;
 int mwifiex_dbg (int ,int ,char*,int const*) ;
 int mwifiex_del_sta_entry (struct mwifiex_private*,int const*) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;
 int mwifiex_restore_tdls_packets (struct mwifiex_private*,int const*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
mwifiex_tdls_process_enable_link(struct mwifiex_private *priv, const u8 *peer)
{
 struct mwifiex_sta_node *sta_ptr;
 struct ieee80211_mcs_info mcs;
 int i;

 sta_ptr = mwifiex_get_sta_entry(priv, peer);

 if (sta_ptr && (sta_ptr->tdls_status != TDLS_SETUP_FAILURE)) {
  mwifiex_dbg(priv->adapter, MSG,
       "tdls: enable link %pM success\n", peer);

  sta_ptr->tdls_status = TDLS_SETUP_COMPLETE;

  mcs = sta_ptr->tdls_cap.ht_capb.mcs;
  if (mcs.rx_mask[0] != 0xff)
   sta_ptr->is_11n_enabled = 1;
  if (sta_ptr->is_11n_enabled) {
   if (le16_to_cpu(sta_ptr->tdls_cap.ht_capb.cap_info) &
       IEEE80211_HT_CAP_MAX_AMSDU)
    sta_ptr->max_amsdu =
     MWIFIEX_TX_DATA_BUF_SIZE_8K;
   else
    sta_ptr->max_amsdu =
     MWIFIEX_TX_DATA_BUF_SIZE_4K;

   for (i = 0; i < MAX_NUM_TID; i++)
    sta_ptr->ampdu_sta[i] =
           priv->aggr_prio_tbl[i].ampdu_user;
  } else {
   for (i = 0; i < MAX_NUM_TID; i++)
    sta_ptr->ampdu_sta[i] = BA_STREAM_NOT_ALLOWED;
  }
  if (sta_ptr->tdls_cap.extcap.ext_capab[3] &
      WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH) {
   mwifiex_config_tdls_enable(priv);
   mwifiex_config_tdls_cs_params(priv);
  }

  memset(sta_ptr->rx_seq, 0xff, sizeof(sta_ptr->rx_seq));
  mwifiex_restore_tdls_packets(priv, peer, TDLS_SETUP_COMPLETE);
  mwifiex_auto_tdls_update_peer_status(priv, peer,
           TDLS_SETUP_COMPLETE);
 } else {
  mwifiex_dbg(priv->adapter, ERROR,
       "tdls: enable link %pM failed\n", peer);
  if (sta_ptr) {
   mwifiex_11n_cleanup_reorder_tbl(priv);
   spin_lock_bh(&priv->wmm.ra_list_spinlock);
   mwifiex_11n_delete_all_tx_ba_stream_tbl(priv);
   spin_unlock_bh(&priv->wmm.ra_list_spinlock);
   mwifiex_del_sta_entry(priv, peer);
  }
  mwifiex_restore_tdls_packets(priv, peer, TDLS_LINK_TEARDOWN);
  mwifiex_auto_tdls_update_peer_status(priv, peer,
           TDLS_NOT_SETUP);

  return -1;
 }

 return 0;
}
