
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int fwrt; } ;
struct iwl_missed_beacons_notif {int consec_missed_beacons_since_last_rx; int consec_missed_beacons; int num_expected_beacons; int num_recvd_beacons; int mac_id; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_missed_bcon {int stop_consec_missed_bcon_since_rx; int stop_consec_missed_bcon; } ;
struct ieee80211_vif {int dummy; } ;


 int FW_DBG_TRIGGER_MISSED_BEACONS ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int IWL_FW_INI_TIME_POINT_MISSED_BEACONS ;
 scalar_t__ IWL_MVM_MISSED_BEACONS_THRESHOLD ;
 scalar_t__ IWL_MVM_MISSED_BEACONS_THRESHOLD_LONG ;
 int ieee80211_beacon_loss (struct ieee80211_vif*) ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int iwl_dbg_tlv_time_point (int *,int ,int *) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,int *) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 int iwl_mvm_connection_loss (struct iwl_mvm*,struct ieee80211_vif*,char*) ;
 struct ieee80211_vif* iwl_mvm_rcu_dereference_vif_id (struct iwl_mvm*,scalar_t__,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_missed_beacons_notif(struct iwl_mvm *mvm,
         struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_missed_beacons_notif *mb = (void *)pkt->data;
 struct iwl_fw_dbg_trigger_missed_bcon *bcon_trig;
 struct iwl_fw_dbg_trigger_tlv *trigger;
 u32 stop_trig_missed_bcon, stop_trig_missed_bcon_since_rx;
 u32 rx_missed_bcon, rx_missed_bcon_since_rx;
 struct ieee80211_vif *vif;
 u32 id = le32_to_cpu(mb->mac_id);

 IWL_DEBUG_INFO(mvm,
         "missed bcn mac_id=%u, consecutive=%u (%u, %u, %u)\n",
         le32_to_cpu(mb->mac_id),
         le32_to_cpu(mb->consec_missed_beacons),
         le32_to_cpu(mb->consec_missed_beacons_since_last_rx),
         le32_to_cpu(mb->num_recvd_beacons),
         le32_to_cpu(mb->num_expected_beacons));

 rcu_read_lock();

 vif = iwl_mvm_rcu_dereference_vif_id(mvm, id, 1);
 if (!vif)
  goto out;

 rx_missed_bcon = le32_to_cpu(mb->consec_missed_beacons);
 rx_missed_bcon_since_rx =
  le32_to_cpu(mb->consec_missed_beacons_since_last_rx);




 if (rx_missed_bcon > IWL_MVM_MISSED_BEACONS_THRESHOLD_LONG)
  iwl_mvm_connection_loss(mvm, vif, "missed beacons");
 else if (rx_missed_bcon_since_rx > IWL_MVM_MISSED_BEACONS_THRESHOLD)
  ieee80211_beacon_loss(vif);

 iwl_dbg_tlv_time_point(&mvm->fwrt,
          IWL_FW_INI_TIME_POINT_MISSED_BEACONS, ((void*)0));

 trigger = iwl_fw_dbg_trigger_on(&mvm->fwrt, ieee80211_vif_to_wdev(vif),
     FW_DBG_TRIGGER_MISSED_BEACONS);
 if (!trigger)
  goto out;

 bcon_trig = (void *)trigger->data;
 stop_trig_missed_bcon = le32_to_cpu(bcon_trig->stop_consec_missed_bcon);
 stop_trig_missed_bcon_since_rx =
  le32_to_cpu(bcon_trig->stop_consec_missed_bcon_since_rx);



 if (rx_missed_bcon_since_rx >= stop_trig_missed_bcon_since_rx ||
     rx_missed_bcon >= stop_trig_missed_bcon)
  iwl_fw_dbg_collect_trig(&mvm->fwrt, trigger, ((void*)0));

out:
 rcu_read_unlock();
}
