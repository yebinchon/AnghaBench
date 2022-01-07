
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct iwl_mvm_vif {int ap_sta_id; int color; int id; } ;
struct iwl_mvm_txq {int tx_request; int list; void* txq_id; } ;
struct TYPE_9__ {int lock; } ;
struct TYPE_10__ {TYPE_3__ pers; } ;
struct TYPE_11__ {TYPE_4__ rs_drv; } ;
struct iwl_mvm_sta {int sta_id; int tt_tx_protection; int tid_disable_agg; int tx_ant; TYPE_5__ lq_sta; struct iwl_mvm_rxq_dup_data* dup_data; scalar_t__ agg_tids; TYPE_6__* tid_data; scalar_t__ tfd_queue_msk; int sta_type; scalar_t__ tx_protection; int max_agg_bufsize; struct ieee80211_vif* vif; int mac_id_n_color; int lock; } ;
struct iwl_mvm_rxq_dup_data {TYPE_6__* last_seq; } ;
struct iwl_mvm_int_sta {int sta_id; int type; } ;
struct iwl_mvm {int * fw_id_to_mac_id; TYPE_2__* trans; int status; int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {scalar_t__ tdls; int * txq; int addr; } ;
struct TYPE_12__ {void* txq_id; int seq_number; } ;
struct TYPE_8__ {int num_rx_queues; TYPE_1__* trans_cfg; } ;
struct TYPE_7__ {int gen2; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int ENOSPC ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IWL_MAX_TID_COUNT ;
 void* IWL_MVM_INVALID_QUEUE ;
 int IWL_MVM_INVALID_STA ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int IWL_STA_LINK ;
 int IWL_STA_TDLS_LINK ;
 int LINK_QUAL_AGG_FRAME_LIMIT_DEF ;
 int LINK_QUAL_AGG_FRAME_LIMIT_GEN2_DEF ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 unsigned int STA_MODIFY_QUEUES ;
 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int iwl_mvm_add_int_sta_common (struct iwl_mvm*,struct iwl_mvm_int_sta*,int ,int ,int ) ;
 int iwl_mvm_find_free_sta_id (struct iwl_mvm*,int ) ;
 scalar_t__ iwl_mvm_has_new_rx_api (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_has_tlc_offload (struct iwl_mvm*) ;
 int iwl_mvm_realloc_queues_after_restart (struct iwl_mvm*,struct ieee80211_sta*) ;
 int iwl_mvm_reserve_sta_stream (struct iwl_mvm*,struct ieee80211_sta*,int ) ;
 int iwl_mvm_rs_add_sta (struct iwl_mvm*,struct iwl_mvm_sta*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sta_send_to_fw (struct iwl_mvm*,struct ieee80211_sta*,int,unsigned int) ;
 int iwl_mvm_toggle_tx_ant (struct iwl_mvm*,int *) ;
 struct iwl_mvm_txq* iwl_mvm_txq_from_mac80211 (int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 struct iwl_mvm_rxq_dup_data* kcalloc (int,int,int ) ;
 int lockdep_assert_held (int *) ;
 int memset (TYPE_6__*,int,int) ;
 int rcu_assign_pointer (int ,struct ieee80211_sta*) ;
 int spin_lock_init (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_mvm_add_sta(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);
 struct iwl_mvm_rxq_dup_data *dup_data;
 int i, ret, sta_id;
 bool sta_update = 0;
 unsigned int sta_flags = 0;

 lockdep_assert_held(&mvm->mutex);

 if (!test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
  sta_id = iwl_mvm_find_free_sta_id(mvm,
        ieee80211_vif_type_p2p(vif));
 else
  sta_id = mvm_sta->sta_id;

 if (sta_id == IWL_MVM_INVALID_STA)
  return -ENOSPC;

 spin_lock_init(&mvm_sta->lock);


 if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
  struct iwl_mvm_int_sta tmp_sta = {
   .sta_id = sta_id,
   .type = mvm_sta->sta_type,
  };





  ret = iwl_mvm_add_int_sta_common(mvm, &tmp_sta, sta->addr,
       mvmvif->id, mvmvif->color);
  if (ret)
   goto err;

  iwl_mvm_realloc_queues_after_restart(mvm, sta);
  sta_update = 1;
  sta_flags = iwl_mvm_has_new_tx_api(mvm) ? 0 : STA_MODIFY_QUEUES;
  goto update_fw;
 }

 mvm_sta->sta_id = sta_id;
 mvm_sta->mac_id_n_color = FW_CMD_ID_AND_COLOR(mvmvif->id,
            mvmvif->color);
 mvm_sta->vif = vif;
 if (!mvm->trans->trans_cfg->gen2)
  mvm_sta->max_agg_bufsize = LINK_QUAL_AGG_FRAME_LIMIT_DEF;
 else
  mvm_sta->max_agg_bufsize = LINK_QUAL_AGG_FRAME_LIMIT_GEN2_DEF;
 mvm_sta->tx_protection = 0;
 mvm_sta->tt_tx_protection = 0;
 mvm_sta->sta_type = sta->tdls ? IWL_STA_TDLS_LINK : IWL_STA_LINK;


 mvm_sta->tid_disable_agg = 0xffff;
 mvm_sta->tfd_queue_msk = 0;


 for (i = 0; i <= IWL_MAX_TID_COUNT; i++) {
  u16 seq = mvm_sta->tid_data[i].seq_number;
  memset(&mvm_sta->tid_data[i], 0, sizeof(mvm_sta->tid_data[i]));
  mvm_sta->tid_data[i].seq_number = seq;





  mvm_sta->tid_data[i].txq_id = IWL_MVM_INVALID_QUEUE;
 }

 for (i = 0; i < ARRAY_SIZE(sta->txq); i++) {
  struct iwl_mvm_txq *mvmtxq =
   iwl_mvm_txq_from_mac80211(sta->txq[i]);

  mvmtxq->txq_id = IWL_MVM_INVALID_QUEUE;
  INIT_LIST_HEAD(&mvmtxq->list);
  atomic_set(&mvmtxq->tx_request, 0);
 }

 mvm_sta->agg_tids = 0;

 if (iwl_mvm_has_new_rx_api(mvm) &&
     !test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
  int q;

  dup_data = kcalloc(mvm->trans->num_rx_queues,
       sizeof(*dup_data), GFP_KERNEL);
  if (!dup_data)
   return -ENOMEM;
  for (q = 0; q < mvm->trans->num_rx_queues; q++)
   memset(dup_data[q].last_seq, 0xff,
          sizeof(dup_data[q].last_seq));
  mvm_sta->dup_data = dup_data;
 }

 if (!iwl_mvm_has_new_tx_api(mvm)) {
  ret = iwl_mvm_reserve_sta_stream(mvm, sta,
       ieee80211_vif_type_p2p(vif));
  if (ret)
   goto err;
 }





 if (iwl_mvm_has_tlc_offload(mvm))
  iwl_mvm_rs_add_sta(mvm, mvm_sta);
 else
  spin_lock_init(&mvm_sta->lq_sta.rs_drv.pers.lock);

 iwl_mvm_toggle_tx_ant(mvm, &mvm_sta->tx_ant);

update_fw:
 ret = iwl_mvm_sta_send_to_fw(mvm, sta, sta_update, sta_flags);
 if (ret)
  goto err;

 if (vif->type == NL80211_IFTYPE_STATION) {
  if (!sta->tdls) {
   WARN_ON(mvmvif->ap_sta_id != IWL_MVM_INVALID_STA);
   mvmvif->ap_sta_id = sta_id;
  } else {
   WARN_ON(mvmvif->ap_sta_id == IWL_MVM_INVALID_STA);
  }
 }

 rcu_assign_pointer(mvm->fw_id_to_mac_id[sta_id], sta);

 return 0;

err:
 return ret;
}
