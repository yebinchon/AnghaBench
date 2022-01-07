
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_3__ {int sequence; } ;
struct iwl_rx_packet {TYPE_1__ hdr; scalar_t__ data; } ;
struct iwl_mvm_tx_resp {int wireless_media_time; int tlc_info; int initial_rate; int ra_tid; } ;
struct iwl_mvm_sta {TYPE_2__* tid_data; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int wme; } ;
struct TYPE_4__ {int lq_color; void* tx_time; int rate_n_flags; } ;


 int IWL_MVM_DQA_BSS_CLIENT_QUEUE ;
 int IWL_MVM_DQA_MIN_DATA_QUEUE ;
 int IWL_MVM_TX_RES_GET_RA (int ) ;
 int IWL_MVM_TX_RES_GET_TID (int ) ;
 int SEQ_TO_QUEUE (void*) ;
 int TX_RES_RATE_TABLE_COL_GET (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_mvm_rx_tx_cmd_agg_dbg (struct iwl_mvm*,struct iwl_rx_packet*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_rcu (struct iwl_mvm*,int) ;
 int iwl_mvm_tx_airtime (struct iwl_mvm*,struct iwl_mvm_sta*,void*) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void iwl_mvm_rx_tx_cmd_agg(struct iwl_mvm *mvm,
      struct iwl_rx_packet *pkt)
{
 struct iwl_mvm_tx_resp *tx_resp = (void *)pkt->data;
 int sta_id = IWL_MVM_TX_RES_GET_RA(tx_resp->ra_tid);
 int tid = IWL_MVM_TX_RES_GET_TID(tx_resp->ra_tid);
 u16 sequence = le16_to_cpu(pkt->hdr.sequence);
 struct iwl_mvm_sta *mvmsta;
 int queue = SEQ_TO_QUEUE(sequence);
 struct ieee80211_sta *sta;

 if (WARN_ON_ONCE(queue < IWL_MVM_DQA_MIN_DATA_QUEUE &&
    (queue != IWL_MVM_DQA_BSS_CLIENT_QUEUE)))
  return;

 iwl_mvm_rx_tx_cmd_agg_dbg(mvm, pkt);

 rcu_read_lock();

 mvmsta = iwl_mvm_sta_from_staid_rcu(mvm, sta_id);

 sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);
 if (WARN_ON_ONCE(!sta || !sta->wme)) {
  rcu_read_unlock();
  return;
 }

 if (!WARN_ON_ONCE(!mvmsta)) {
  mvmsta->tid_data[tid].rate_n_flags =
   le32_to_cpu(tx_resp->initial_rate);
  mvmsta->tid_data[tid].tx_time =
   le16_to_cpu(tx_resp->wireless_media_time);
  mvmsta->tid_data[tid].lq_color =
   TX_RES_RATE_TABLE_COL_GET(tx_resp->tlc_info);
  iwl_mvm_tx_airtime(mvm, mvmsta,
       le16_to_cpu(tx_resp->wireless_media_time));
 }

 rcu_read_unlock();
}
