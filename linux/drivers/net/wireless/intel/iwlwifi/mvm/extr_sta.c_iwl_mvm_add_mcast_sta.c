
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_trans_txq_scd_cfg {int aggregate; int frame_limit; int tid; int sta_id; int fifo; } ;
struct iwl_mvm_int_sta {int sta_id; int tfd_queue_msk; } ;
struct iwl_mvm_vif {int cab_queue; int color; int id; struct iwl_mvm_int_sta mcast_sta; } ;
struct iwl_mvm {TYPE_1__* fw; int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int BIT (int) ;
 int ENOTSUPP ;
 int IWL_FRAME_LIMIT ;
 int IWL_MVM_DQA_GCAST_QUEUE ;
 int IWL_MVM_TX_FIFO_BE ;
 int IWL_MVM_TX_FIFO_MCAST ;
 int IWL_UCODE_TLV_API_STA_TYPE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ fw_has_api (int *,int ) ;
 int iwl_mvm_add_int_sta_common (struct iwl_mvm*,struct iwl_mvm_int_sta*,int const*,int ,int ) ;
 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,struct iwl_mvm_int_sta*) ;
 int iwl_mvm_enable_txq (struct iwl_mvm*,int *,int,int ,struct iwl_trans_txq_scd_cfg*,unsigned int) ;
 unsigned int iwl_mvm_get_wd_timeout (struct iwl_mvm*,struct ieee80211_vif*,int,int) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_tvqm_enable_txq (struct iwl_mvm*,int ,int ,unsigned int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_add_mcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_int_sta *msta = &mvmvif->mcast_sta;
 static const u8 _maddr[] = {0x03, 0x00, 0x00, 0x00, 0x00, 0x00};
 const u8 *maddr = _maddr;
 struct iwl_trans_txq_scd_cfg cfg = {
  .fifo = vif->type == NL80211_IFTYPE_AP ?
   IWL_MVM_TX_FIFO_MCAST : IWL_MVM_TX_FIFO_BE,
  .sta_id = msta->sta_id,
  .tid = 0,
  .aggregate = 0,
  .frame_limit = IWL_FRAME_LIMIT,
 };
 unsigned int timeout = iwl_mvm_get_wd_timeout(mvm, vif, 0, 0);
 int ret;

 lockdep_assert_held(&mvm->mutex);

 if (WARN_ON(vif->type != NL80211_IFTYPE_AP &&
      vif->type != NL80211_IFTYPE_ADHOC))
  return -ENOTSUPP;







 if (vif->type == NL80211_IFTYPE_ADHOC)
  mvmvif->cab_queue = IWL_MVM_DQA_GCAST_QUEUE;





 if (!iwl_mvm_has_new_tx_api(mvm) &&
     fw_has_api(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE)) {
  iwl_mvm_enable_txq(mvm, ((void*)0), mvmvif->cab_queue, 0, &cfg,
       timeout);
  msta->tfd_queue_msk |= BIT(mvmvif->cab_queue);
 }
 ret = iwl_mvm_add_int_sta_common(mvm, msta, maddr,
      mvmvif->id, mvmvif->color);
 if (ret)
  goto err;
 if (iwl_mvm_has_new_tx_api(mvm)) {
  int queue = iwl_mvm_tvqm_enable_txq(mvm, msta->sta_id,
          0,
          timeout);
  if (queue < 0) {
   ret = queue;
   goto err;
  }
  mvmvif->cab_queue = queue;
 } else if (!fw_has_api(&mvm->fw->ucode_capa,
          IWL_UCODE_TLV_API_STA_TYPE))
  iwl_mvm_enable_txq(mvm, ((void*)0), mvmvif->cab_queue, 0, &cfg,
       timeout);

 return 0;
err:
 iwl_mvm_dealloc_int_sta(mvm, msta);
 return ret;
}
