
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct iwl_tx_cmd {TYPE_1__* hdr; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; int lock; TYPE_3__* tid_data; } ;
struct iwl_mvm {int trans; int add_stream_wk; TYPE_2__* queue_info; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;
typedef int __le16 ;
struct TYPE_6__ {scalar_t__ state; size_t seq_number; size_t txq_id; } ;
struct TYPE_5__ {scalar_t__ status; int * last_frame_time; } ;
struct TYPE_4__ {int seq_ctrl; } ;


 size_t IEEE80211_SCTL_FRAG ;
 size_t IEEE80211_SCTL_SEQ ;
 int IEEE80211_SEQ_TO_SN (size_t) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 int IEEE80211_TX_STATUS_EOSP ;
 scalar_t__ IWL_AGG_ON ;
 int IWL_DEBUG_TX (struct iwl_mvm*,char*,scalar_t__,size_t,...) ;
 size_t IWL_MAX_TID_COUNT ;
 size_t IWL_MVM_INVALID_QUEUE ;
 scalar_t__ IWL_MVM_INVALID_STA ;
 scalar_t__ IWL_MVM_NON_TRANSMITTING_AP ;
 scalar_t__ IWL_MVM_QUEUE_SHARED ;
 size_t IWL_TID_NON_QOS ;
 scalar_t__ WARN_ONCE (int,char*,...) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_to_le16 (size_t) ;
 size_t ieee80211_get_tid (struct ieee80211_hdr*) ;
 int ieee80211_has_morefrags (int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_is_probe_resp (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_probe_resp_set_noa (struct iwl_mvm*,struct sk_buff*) ;
 struct iwl_device_cmd* iwl_mvm_set_tx_params (struct iwl_mvm*,struct sk_buff*,struct ieee80211_tx_info*,int,struct ieee80211_sta*,scalar_t__) ;
 int iwl_mvm_skb_prepare_status (struct sk_buff*,struct iwl_device_cmd*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 scalar_t__ iwl_mvm_tx_pkt_queued (struct iwl_mvm*,struct iwl_mvm_sta*,size_t) ;
 scalar_t__ iwl_mvm_txq_should_update (struct iwl_mvm*,size_t) ;
 int iwl_trans_free_tx_cmd (int ,struct iwl_device_cmd*) ;
 scalar_t__ iwl_trans_tx (int ,struct sk_buff*,struct iwl_device_cmd*,size_t) ;
 int jiffies ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int iwl_mvm_tx_mpdu(struct iwl_mvm *mvm, struct sk_buff *skb,
      struct ieee80211_tx_info *info,
      struct ieee80211_sta *sta)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct iwl_mvm_sta *mvmsta;
 struct iwl_device_cmd *dev_cmd;
 __le16 fc;
 u16 seq_number = 0;
 u8 tid = IWL_MAX_TID_COUNT;
 u16 txq_id;
 bool is_ampdu = 0;
 int hdrlen;

 mvmsta = iwl_mvm_sta_from_mac80211(sta);
 fc = hdr->frame_control;
 hdrlen = ieee80211_hdrlen(fc);

 if (IWL_MVM_NON_TRANSMITTING_AP && ieee80211_is_probe_resp(fc))
  return -1;

 if (WARN_ON_ONCE(!mvmsta))
  return -1;

 if (WARN_ON_ONCE(mvmsta->sta_id == IWL_MVM_INVALID_STA))
  return -1;

 if (unlikely(ieee80211_is_probe_resp(fc)))
  iwl_mvm_probe_resp_set_noa(mvm, skb);

 dev_cmd = iwl_mvm_set_tx_params(mvm, skb, info, hdrlen,
     sta, mvmsta->sta_id);
 if (!dev_cmd)
  goto drop;






 info->flags &= ~IEEE80211_TX_STATUS_EOSP;

 spin_lock(&mvmsta->lock);





 if (ieee80211_is_data_qos(fc) && !ieee80211_is_qos_nullfunc(fc)) {
  tid = ieee80211_get_tid(hdr);
  if (WARN_ONCE(tid >= IWL_MAX_TID_COUNT, "Invalid TID %d", tid))
   goto drop_unlock_sta;

  is_ampdu = info->flags & IEEE80211_TX_CTL_AMPDU;
  if (WARN_ONCE(is_ampdu &&
         mvmsta->tid_data[tid].state != IWL_AGG_ON,
         "Invalid internal agg state %d for TID %d",
          mvmsta->tid_data[tid].state, tid))
   goto drop_unlock_sta;

  seq_number = mvmsta->tid_data[tid].seq_number;
  seq_number &= IEEE80211_SCTL_SEQ;

  if (!iwl_mvm_has_new_tx_api(mvm)) {
   struct iwl_tx_cmd *tx_cmd = (void *)dev_cmd->payload;

   hdr->seq_ctrl &= cpu_to_le16(IEEE80211_SCTL_FRAG);
   hdr->seq_ctrl |= cpu_to_le16(seq_number);

   tx_cmd->hdr->seq_ctrl = hdr->seq_ctrl;
  }
 } else if (ieee80211_is_data(fc) && !ieee80211_is_data_qos(fc)) {
  tid = IWL_TID_NON_QOS;
 }

 txq_id = mvmsta->tid_data[tid].txq_id;

 WARN_ON_ONCE(info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM);

 if (WARN_ONCE(txq_id == IWL_MVM_INVALID_QUEUE, "Invalid TXQ id")) {
  iwl_trans_free_tx_cmd(mvm->trans, dev_cmd);
  spin_unlock(&mvmsta->lock);
  return 0;
 }

 if (!iwl_mvm_has_new_tx_api(mvm)) {

  mvm->queue_info[txq_id].last_frame_time[tid] = jiffies;
  if (unlikely(mvm->queue_info[txq_id].status ==
        IWL_MVM_QUEUE_SHARED &&
        iwl_mvm_txq_should_update(mvm, txq_id)))
   schedule_work(&mvm->add_stream_wk);
 }

 IWL_DEBUG_TX(mvm, "TX to [%d|%d] Q:%d - seq: 0x%x len %d\n",
       mvmsta->sta_id, tid, txq_id,
       IEEE80211_SEQ_TO_SN(seq_number), skb->len);


 iwl_mvm_skb_prepare_status(skb, dev_cmd);

 if (iwl_trans_tx(mvm->trans, skb, dev_cmd, txq_id))
  goto drop_unlock_sta;

 if (tid < IWL_MAX_TID_COUNT && !ieee80211_has_morefrags(fc))
  mvmsta->tid_data[tid].seq_number = seq_number + 0x10;

 spin_unlock(&mvmsta->lock);

 if (iwl_mvm_tx_pkt_queued(mvm, mvmsta,
      tid == IWL_MAX_TID_COUNT ? 0 : tid))
  goto drop;

 return 0;

drop_unlock_sta:
 iwl_trans_free_tx_cmd(mvm->trans, dev_cmd);
 spin_unlock(&mvmsta->lock);
drop:
 IWL_DEBUG_TX(mvm, "TX to [%d|%d] dropped\n", mvmsta->sta_id, tid);
 return -1;
}
