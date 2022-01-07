
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_sta_node {int max_amsdu; int tx_pause; } ;
struct mwifiex_ra_list_tbl {int tdls_link; int amsdu_in_ampdu; int list; int ba_packet_thr; scalar_t__ ba_pkt_count; scalar_t__ is_11n_enabled; int max_amsdu; int tx_paused; int ba_status; } ;
struct TYPE_4__ {TYPE_1__* tid_tbl_ptr; } ;
struct mwifiex_private {TYPE_2__ wmm; int sta_list_spinlock; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int dummy; } ;
struct TYPE_3__ {int ra_list; } ;


 int BA_SETUP_NONE ;
 int DATA ;
 int INFO ;
 scalar_t__ IS_11N_ENABLED (struct mwifiex_private*) ;
 int MAX_NUM_TID ;
 int list_add_tail (int *,int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,struct mwifiex_ra_list_tbl*,...) ;
 int mwifiex_get_random_ba_threshold () ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;
 int mwifiex_get_tdls_link_status (struct mwifiex_private*,int const*) ;
 scalar_t__ mwifiex_is_sta_11n_enabled (struct mwifiex_private*,struct mwifiex_sta_node*) ;
 scalar_t__ mwifiex_is_tdls_link_setup (int ) ;
 int mwifiex_queuing_ra_based (struct mwifiex_private*) ;
 scalar_t__ mwifiex_tdls_peer_11n_enabled (struct mwifiex_private*,int const*) ;
 struct mwifiex_ra_list_tbl* mwifiex_wmm_allocate_ralist_node (struct mwifiex_adapter*,int const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_ralist_add(struct mwifiex_private *priv, const u8 *ra)
{
 int i;
 struct mwifiex_ra_list_tbl *ra_list;
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_sta_node *node;


 for (i = 0; i < MAX_NUM_TID; ++i) {
  ra_list = mwifiex_wmm_allocate_ralist_node(adapter, ra);
  mwifiex_dbg(adapter, INFO,
       "info: created ra_list %p\n", ra_list);

  if (!ra_list)
   break;

  ra_list->is_11n_enabled = 0;
  ra_list->tdls_link = 0;
  ra_list->ba_status = BA_SETUP_NONE;
  ra_list->amsdu_in_ampdu = 0;
  if (!mwifiex_queuing_ra_based(priv)) {
   if (mwifiex_is_tdls_link_setup
    (mwifiex_get_tdls_link_status(priv, ra))) {
    ra_list->tdls_link = 1;
    ra_list->is_11n_enabled =
     mwifiex_tdls_peer_11n_enabled(priv, ra);
   } else {
    ra_list->is_11n_enabled = IS_11N_ENABLED(priv);
   }
  } else {
   spin_lock_bh(&priv->sta_list_spinlock);
   node = mwifiex_get_sta_entry(priv, ra);
   if (node)
    ra_list->tx_paused = node->tx_pause;
   ra_list->is_11n_enabled =
          mwifiex_is_sta_11n_enabled(priv, node);
   if (ra_list->is_11n_enabled)
    ra_list->max_amsdu = node->max_amsdu;
   spin_unlock_bh(&priv->sta_list_spinlock);
  }

  mwifiex_dbg(adapter, DATA, "data: ralist %p: is_11n_enabled=%d\n",
       ra_list, ra_list->is_11n_enabled);

  if (ra_list->is_11n_enabled) {
   ra_list->ba_pkt_count = 0;
   ra_list->ba_packet_thr =
           mwifiex_get_random_ba_threshold();
  }
  list_add_tail(&ra_list->list,
         &priv->wmm.tid_tbl_ptr[i].ra_list);
 }
}
