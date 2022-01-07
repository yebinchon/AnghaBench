
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef void* u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int sequence; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_mvm_tx_resp {int wireless_media_time; scalar_t__ failure_frame; int initial_rate; int reduced_tpc; int tlc_info; int seq_ctl; int tx_queue; int ra_tid; } ;
struct iwl_mvm_tid_data {void* next_reclaimed; } ;
struct iwl_mvm_sta {scalar_t__ sta_state; int next_status_eosp; scalar_t__ sleep_tx_count; int lock; struct iwl_mvm_tid_data* tid_data; int tx_ant; } ;
struct iwl_mvm {int * fw_id_to_mac_id; int hw; int mgmt_last_antenna_idx; int trans; } ;
struct TYPE_6__ {void** status_driver_data; void* tx_time; TYPE_2__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ status; int * driver_data; } ;
struct ieee80211_sta {scalar_t__ wme; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; } ;
struct agg_tx_status {int status; } ;
struct TYPE_5__ {scalar_t__ count; } ;


 int ARRAY_SIZE (void**) ;
 int BUILD_BUG_ON (int) ;
 int IEEE80211_FRAME_RELEASE_UAPSD ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ IEEE80211_STA_AUTHORIZED ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_AMPDU_NO_BACK ;
 int IEEE80211_TX_STAT_TX_FILTERED ;
 int IS_ERR (struct ieee80211_sta*) ;
 int IWL_DEBUG_TX_REPLY (struct iwl_mvm*,char*,...) ;
 int IWL_MGMT_TID ;
 int IWL_MVM_TX_RES_GET_RA (int ) ;
 int IWL_MVM_TX_RES_GET_TID (int ) ;
 void* RS_DRV_DATA_PACK (int,int ) ;
 int SEQ_TO_INDEX (void*) ;
 int SEQ_TO_QUEUE (void*) ;
 int TX_RES_RATE_TABLE_COL_GET (int ) ;




 int TX_STATUS_MSK ;

 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 int ieee80211_send_eosp_nullfunc (struct ieee80211_sta*,int) ;
 int ieee80211_sta_eosp (struct ieee80211_sta*) ;
 int ieee80211_tx_status (int ,struct sk_buff*) ;
 int iwl_mvm_check_ratid_empty (struct iwl_mvm*,struct ieee80211_sta*,int) ;
 struct agg_tx_status* iwl_mvm_get_agg_status (struct iwl_mvm*,struct iwl_mvm_tx_resp*) ;
 void* iwl_mvm_get_scd_ssn (struct iwl_mvm*,struct iwl_mvm_tx_resp*) ;
 int iwl_mvm_get_tx_fail_reason (int) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_hwrate_to_tx_status (scalar_t__,struct ieee80211_tx_info*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sta_modify_sleep_tx_count (struct iwl_mvm*,struct ieee80211_sta*,int ,int,int,int,int) ;
 int iwl_mvm_tid_queued (struct iwl_mvm*,struct iwl_mvm_tid_data*) ;
 int iwl_mvm_toggle_tx_ant (struct iwl_mvm*,int *) ;
 int iwl_mvm_tx_airtime (struct iwl_mvm*,struct iwl_mvm_sta*,void*) ;
 int iwl_mvm_tx_status_check_trigger (struct iwl_mvm*,int) ;
 int iwl_trans_free_tx_cmd (int ,int ) ;
 int iwl_trans_reclaim (int ,int,void*,struct sk_buff_head*) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_mvm_rx_tx_cmd_single(struct iwl_mvm *mvm,
         struct iwl_rx_packet *pkt)
{
 struct ieee80211_sta *sta;
 u16 sequence = le16_to_cpu(pkt->hdr.sequence);
 int txq_id = SEQ_TO_QUEUE(sequence);

 struct iwl_mvm_tx_resp *tx_resp = (void *)pkt->data;
 int sta_id = IWL_MVM_TX_RES_GET_RA(tx_resp->ra_tid);
 int tid = IWL_MVM_TX_RES_GET_TID(tx_resp->ra_tid);
 struct agg_tx_status *agg_status =
  iwl_mvm_get_agg_status(mvm, tx_resp);
 u32 status = le16_to_cpu(agg_status->status);
 u16 ssn = iwl_mvm_get_scd_ssn(mvm, tx_resp);
 struct sk_buff_head skbs;
 u8 skb_freed = 0;
 u8 lq_color;
 u16 next_reclaimed, seq_ctl;
 bool is_ndp = 0;

 __skb_queue_head_init(&skbs);

 if (iwl_mvm_has_new_tx_api(mvm))
  txq_id = le16_to_cpu(tx_resp->tx_queue);

 seq_ctl = le16_to_cpu(tx_resp->seq_ctl);


 iwl_trans_reclaim(mvm->trans, txq_id, ssn, &skbs);

 while (!skb_queue_empty(&skbs)) {
  struct sk_buff *skb = __skb_dequeue(&skbs);
  struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
  struct ieee80211_hdr *hdr = (void *)skb->data;
  bool flushed = 0;

  skb_freed++;

  iwl_trans_free_tx_cmd(mvm->trans, info->driver_data[1]);

  memset(&info->status, 0, sizeof(info->status));


  switch (status & TX_STATUS_MSK) {
  case 128:
  case 132:
   info->flags |= IEEE80211_TX_STAT_ACK;
   break;
  case 129:
  case 130:
   flushed = 1;
   break;
  case 131:



   WARN_ON(1);
   info->flags |= IEEE80211_TX_STAT_TX_FILTERED;
   break;
  default:
   break;
  }

  if ((status & TX_STATUS_MSK) != 128 &&
      ieee80211_is_mgmt(hdr->frame_control))
   iwl_mvm_toggle_tx_ant(mvm, &mvm->mgmt_last_antenna_idx);






  if (skb_freed > 1)
   info->flags |= IEEE80211_TX_STAT_ACK;

  iwl_mvm_tx_status_check_trigger(mvm, status);

  info->status.rates[0].count = tx_resp->failure_frame + 1;
  iwl_mvm_hwrate_to_tx_status(le32_to_cpu(tx_resp->initial_rate),
         info);
  info->status.status_driver_data[1] =
   (void *)(uintptr_t)le32_to_cpu(tx_resp->initial_rate);


  if (info->flags & IEEE80211_TX_CTL_AMPDU &&
      !(info->flags & IEEE80211_TX_STAT_ACK) &&
      !(info->flags & IEEE80211_TX_STAT_TX_FILTERED) && !flushed)
   info->flags |= IEEE80211_TX_STAT_AMPDU_NO_BACK;
  info->flags &= ~IEEE80211_TX_CTL_AMPDU;


  if (ieee80211_is_back_req(hdr->frame_control))
   seq_ctl = 0;
  else if (status != 128)
   seq_ctl = le16_to_cpu(hdr->seq_ctrl);

  if (unlikely(!seq_ctl)) {
   struct ieee80211_hdr *hdr = (void *)skb->data;
   if (ieee80211_is_qos_nullfunc(hdr->frame_control))
    is_ndp = 1;
  }





  info->status.tx_time =
   le16_to_cpu(tx_resp->wireless_media_time);
  BUILD_BUG_ON(ARRAY_SIZE(info->status.status_driver_data) < 1);
  lq_color = TX_RES_RATE_TABLE_COL_GET(tx_resp->tlc_info);
  info->status.status_driver_data[0] =
   RS_DRV_DATA_PACK(lq_color, tx_resp->reduced_tpc);

  ieee80211_tx_status(mvm->hw, skb);
 }
 next_reclaimed = ssn;

 IWL_DEBUG_TX_REPLY(mvm,
      "TXQ %d status %s (0x%08x)\n",
      txq_id, iwl_mvm_get_tx_fail_reason(status), status);

 IWL_DEBUG_TX_REPLY(mvm,
      "\t\t\t\tinitial_rate 0x%x retries %d, idx=%d ssn=%d next_reclaimed=0x%x seq_ctl=0x%x\n",
      le32_to_cpu(tx_resp->initial_rate),
      tx_resp->failure_frame, SEQ_TO_INDEX(sequence),
      ssn, next_reclaimed, seq_ctl);

 rcu_read_lock();

 sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);




 if (WARN_ON_ONCE(!sta))
  goto out;

 if (!IS_ERR(sta)) {
  struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);

  iwl_mvm_tx_airtime(mvm, mvmsta,
       le16_to_cpu(tx_resp->wireless_media_time));

  if ((status & TX_STATUS_MSK) != 128 &&
      mvmsta->sta_state < IEEE80211_STA_AUTHORIZED)
   iwl_mvm_toggle_tx_ant(mvm, &mvmsta->tx_ant);

  if (sta->wme && tid != IWL_MGMT_TID) {
   struct iwl_mvm_tid_data *tid_data =
    &mvmsta->tid_data[tid];
   bool send_eosp_ndp = 0;

   spin_lock_bh(&mvmsta->lock);

   if (!is_ndp) {
    tid_data->next_reclaimed = next_reclaimed;
    IWL_DEBUG_TX_REPLY(mvm,
         "Next reclaimed packet:%d\n",
         next_reclaimed);
   } else {
    IWL_DEBUG_TX_REPLY(mvm,
         "NDP - don't update next_reclaimed\n");
   }

   iwl_mvm_check_ratid_empty(mvm, sta, tid);

   if (mvmsta->sleep_tx_count) {
    mvmsta->sleep_tx_count--;
    if (mvmsta->sleep_tx_count &&
        !iwl_mvm_tid_queued(mvm, tid_data)) {
     send_eosp_ndp = 1;
    }
   }

   spin_unlock_bh(&mvmsta->lock);
   if (send_eosp_ndp) {
    iwl_mvm_sta_modify_sleep_tx_count(mvm, sta,
     IEEE80211_FRAME_RELEASE_UAPSD,
     1, tid, 0, 0);
    mvmsta->sleep_tx_count = 0;
    ieee80211_send_eosp_nullfunc(sta, tid);
   }
  }

  if (mvmsta->next_status_eosp) {
   mvmsta->next_status_eosp = 0;
   ieee80211_sta_eosp(sta);
  }
 }
out:
 rcu_read_unlock();
}
