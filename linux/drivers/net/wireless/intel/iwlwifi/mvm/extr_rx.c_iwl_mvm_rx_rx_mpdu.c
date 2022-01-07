
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_phy_info {int phy_flags; int channel; int system_timestamp; int timestamp; int rate_n_flags; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_mpdu_res_start {int byte_count; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_vif {scalar_t__ csa_target_freq; } ;
struct iwl_mvm_sta {struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int paused; } ;
struct iwl_mvm {scalar_t__ sched_scan_pass_all; int ampdu_ref; TYPE_1__ tcm; int fwrt; int csa_tx_blocked_vif; int hw; int * fw_id_to_mac_id; struct iwl_rx_phy_info last_phy_info; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_low_rssi {int rssi; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int flag; scalar_t__ freq; scalar_t__ signal; int enc_flags; int rate_idx; int nss; int boottime_ns; int band; int encoding; int bw; int ampdu_reference; scalar_t__ mactime; void* device_timestamp; } ;
struct ieee80211_hdr {int frame_control; int addr1; int addr2; } ;
typedef scalar_t__ s32 ;
typedef int __le32 ;


 int ARRAY_SIZE (int *) ;
 int FW_DBG_TRIGGER_RSSI ;
 int GFP_ATOMIC ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ IS_ERR (struct ieee80211_sta*) ;
 int IWL_DEBUG_DROP (struct iwl_mvm*,char*,int) ;
 int IWL_DEBUG_RX (struct iwl_mvm*,char*,int) ;
 int IWL_DEBUG_STATS_LIMIT (struct iwl_mvm*,char*,scalar_t__,unsigned long long) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int RATE_HT_MCS_GF_MSK ;
 int RATE_HT_MCS_INDEX_MSK ;
 int RATE_INFO_BW_160 ;
 int RATE_INFO_BW_40 ;
 int RATE_INFO_BW_80 ;
 int RATE_MCS_BF_MSK ;
 int RATE_MCS_CCK_MSK ;




 int RATE_MCS_CHAN_WIDTH_MSK ;
 int RATE_MCS_HT_MSK ;
 int RATE_MCS_LDPC_MSK ;
 int RATE_MCS_SGI_MSK ;
 int RATE_MCS_STBC_MSK ;
 int RATE_MCS_STBC_POS ;
 int RATE_MCS_VHT_MSK ;
 int RATE_VHT_MCS_NSS_MSK ;
 int RATE_VHT_MCS_NSS_POS ;
 int RATE_VHT_MCS_RATE_CODE_MSK ;
 int RX_ENC_FLAG_BF ;
 int RX_ENC_FLAG_HT_GF ;
 int RX_ENC_FLAG_LDPC ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_FLAG_STBC_SHIFT ;
 int RX_ENC_HT ;
 int RX_ENC_VHT ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_MACTIME_PLCP_START ;
 int RX_MDPU_RES_STATUS_STA_ID_SHIFT ;
 int RX_MPDU_RES_STATUS_CRC_OK ;
 int RX_MPDU_RES_STATUS_OVERRUN_OK ;
 int RX_MPDU_RES_STATUS_SRC_STA_FOUND ;
 int RX_MPDU_RES_STATUS_STA_ID_MSK ;
 int RX_RES_PHY_FLAGS_AGG ;
 int RX_RES_PHY_FLAGS_BAND_24 ;
 int RX_RES_PHY_FLAGS_SHORT_PREAMBLE ;
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ;
 scalar_t__ SCHED_SCAN_PASS_ALL_FOUND ;
 scalar_t__ WARN (int,char*,int,int ) ;
 int WARN_ON_ONCE (int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int ,int *) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int is_multicast_ether_addr (int ) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,int *) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 int iwl_mvm_get_signal_strength (struct iwl_mvm*,struct iwl_rx_phy_info*,struct ieee80211_rx_status*) ;
 int iwl_mvm_legacy_rate_to_mac80211_idx (int,int ) ;
 int iwl_mvm_pass_packet_to_mac80211 (struct iwl_mvm*,struct ieee80211_sta*,struct napi_struct*,struct sk_buff*,struct ieee80211_hdr*,int,int,struct iwl_rx_cmd_buffer*) ;
 int iwl_mvm_rx_csum (struct ieee80211_sta*,struct sk_buff*,int) ;
 int iwl_mvm_rx_handle_tcm (struct iwl_mvm*,struct ieee80211_sta*,struct ieee80211_hdr*,int,struct iwl_rx_phy_info*,int) ;
 scalar_t__ iwl_mvm_set_mac80211_rx_flag (struct iwl_mvm*,struct ieee80211_hdr*,struct ieee80211_rx_status*,int,int*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_sta_modify_disable_tx_ap (struct iwl_mvm*,struct ieee80211_sta*,int) ;
 int iwl_mvm_update_frame_stats (struct iwl_mvm*,int,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int kfree_skb (struct sk_buff*) ;
 int ktime_get_boottime_ns () ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int le32_to_cpup (int *) ;
 scalar_t__ le64_to_cpu (int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rs_update_last_rssi (struct iwl_mvm*,struct iwl_mvm_sta*,struct ieee80211_rx_status*) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 scalar_t__ unlikely (int) ;

void iwl_mvm_rx_rx_mpdu(struct iwl_mvm *mvm, struct napi_struct *napi,
   struct iwl_rx_cmd_buffer *rxb)
{
 struct ieee80211_hdr *hdr;
 struct ieee80211_rx_status *rx_status;
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_rx_phy_info *phy_info;
 struct iwl_rx_mpdu_res_start *rx_res;
 struct ieee80211_sta *sta = ((void*)0);
 struct sk_buff *skb;
 u32 len;
 u32 rate_n_flags;
 u32 rx_pkt_status;
 u8 crypt_len = 0;

 phy_info = &mvm->last_phy_info;
 rx_res = (struct iwl_rx_mpdu_res_start *)pkt->data;
 hdr = (struct ieee80211_hdr *)(pkt->data + sizeof(*rx_res));
 len = le16_to_cpu(rx_res->byte_count);
 rx_pkt_status = le32_to_cpup((__le32 *)
  (pkt->data + sizeof(*rx_res) + len));




 skb = alloc_skb(128, GFP_ATOMIC);
 if (!skb) {
  IWL_ERR(mvm, "alloc_skb failed\n");
  return;
 }

 rx_status = IEEE80211_SKB_RXCB(skb);




 if (iwl_mvm_set_mac80211_rx_flag(mvm, hdr, rx_status, rx_pkt_status,
      &crypt_len)) {
  IWL_DEBUG_DROP(mvm, "Bad decryption results 0x%08x\n",
          rx_pkt_status);
  kfree_skb(skb);
  return;
 }





 if (!(rx_pkt_status & RX_MPDU_RES_STATUS_CRC_OK) ||
     !(rx_pkt_status & RX_MPDU_RES_STATUS_OVERRUN_OK)) {
  IWL_DEBUG_RX(mvm, "Bad CRC or FIFO: 0x%08X.\n", rx_pkt_status);
  rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
 }


 rate_n_flags = le32_to_cpu(phy_info->rate_n_flags);


 rx_status->mactime = le64_to_cpu(phy_info->timestamp);
 rx_status->device_timestamp = le32_to_cpu(phy_info->system_timestamp);
 rx_status->band =
  (phy_info->phy_flags & cpu_to_le16(RX_RES_PHY_FLAGS_BAND_24)) ?
    NL80211_BAND_2GHZ : NL80211_BAND_5GHZ;
 rx_status->freq =
  ieee80211_channel_to_frequency(le16_to_cpu(phy_info->channel),
            rx_status->band);


 rx_status->flag |= RX_FLAG_MACTIME_PLCP_START;

 iwl_mvm_get_signal_strength(mvm, phy_info, rx_status);

 IWL_DEBUG_STATS_LIMIT(mvm, "Rssi %d, TSF %llu\n", rx_status->signal,
         (unsigned long long)rx_status->mactime);

 rcu_read_lock();
 if (rx_pkt_status & RX_MPDU_RES_STATUS_SRC_STA_FOUND) {
  u32 id = rx_pkt_status & RX_MPDU_RES_STATUS_STA_ID_MSK;

  id >>= RX_MDPU_RES_STATUS_STA_ID_SHIFT;

  if (!WARN_ON_ONCE(id >= ARRAY_SIZE(mvm->fw_id_to_mac_id))) {
   sta = rcu_dereference(mvm->fw_id_to_mac_id[id]);
   if (IS_ERR(sta))
    sta = ((void*)0);
  }
 } else if (!is_multicast_ether_addr(hdr->addr2)) {



  sta = ieee80211_find_sta_by_ifaddr(mvm->hw, hdr->addr2, ((void*)0));
 }

 if (sta) {
  struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
  struct ieee80211_vif *tx_blocked_vif =
   rcu_dereference(mvm->csa_tx_blocked_vif);
  struct iwl_fw_dbg_trigger_tlv *trig;
  struct ieee80211_vif *vif = mvmsta->vif;





  if (unlikely(tx_blocked_vif) && vif == tx_blocked_vif) {
   struct iwl_mvm_vif *mvmvif =
    iwl_mvm_vif_from_mac80211(tx_blocked_vif);

   if (mvmvif->csa_target_freq == rx_status->freq)
    iwl_mvm_sta_modify_disable_tx_ap(mvm, sta,
         0);
  }

  rs_update_last_rssi(mvm, mvmsta, rx_status);

  trig = iwl_fw_dbg_trigger_on(&mvm->fwrt,
          ieee80211_vif_to_wdev(vif),
          FW_DBG_TRIGGER_RSSI);

  if (trig && ieee80211_is_beacon(hdr->frame_control)) {
   struct iwl_fw_dbg_trigger_low_rssi *rssi_trig;
   s32 rssi;

   rssi_trig = (void *)trig->data;
   rssi = le32_to_cpu(rssi_trig->rssi);

   if (rx_status->signal < rssi)
    iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
       ((void*)0));
  }

  if (!mvm->tcm.paused && len >= sizeof(*hdr) &&
      !is_multicast_ether_addr(hdr->addr1) &&
      ieee80211_is_data(hdr->frame_control))
   iwl_mvm_rx_handle_tcm(mvm, sta, hdr, len, phy_info,
           rate_n_flags);

  if (ieee80211_is_data(hdr->frame_control))
   iwl_mvm_rx_csum(sta, skb, rx_pkt_status);
 }
 rcu_read_unlock();


 if (phy_info->phy_flags & cpu_to_le16(RX_RES_PHY_FLAGS_SHORT_PREAMBLE))
  rx_status->enc_flags |= RX_ENC_FLAG_SHORTPRE;

 if (phy_info->phy_flags & cpu_to_le16(RX_RES_PHY_FLAGS_AGG)) {





  rx_status->flag |= RX_FLAG_AMPDU_DETAILS;
  rx_status->ampdu_reference = mvm->ampdu_ref;
 }


 switch (rate_n_flags & RATE_MCS_CHAN_WIDTH_MSK) {
 case 130:
  break;
 case 129:
  rx_status->bw = RATE_INFO_BW_40;
  break;
 case 128:
  rx_status->bw = RATE_INFO_BW_80;
  break;
 case 131:
  rx_status->bw = RATE_INFO_BW_160;
  break;
 }
 if (!(rate_n_flags & RATE_MCS_CCK_MSK) &&
     rate_n_flags & RATE_MCS_SGI_MSK)
  rx_status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
 if (rate_n_flags & RATE_HT_MCS_GF_MSK)
  rx_status->enc_flags |= RX_ENC_FLAG_HT_GF;
 if (rate_n_flags & RATE_MCS_LDPC_MSK)
  rx_status->enc_flags |= RX_ENC_FLAG_LDPC;
 if (rate_n_flags & RATE_MCS_HT_MSK) {
  u8 stbc = (rate_n_flags & RATE_MCS_STBC_MSK) >>
    RATE_MCS_STBC_POS;
  rx_status->encoding = RX_ENC_HT;
  rx_status->rate_idx = rate_n_flags & RATE_HT_MCS_INDEX_MSK;
  rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
 } else if (rate_n_flags & RATE_MCS_VHT_MSK) {
  u8 stbc = (rate_n_flags & RATE_MCS_STBC_MSK) >>
    RATE_MCS_STBC_POS;
  rx_status->nss =
   ((rate_n_flags & RATE_VHT_MCS_NSS_MSK) >>
      RATE_VHT_MCS_NSS_POS) + 1;
  rx_status->rate_idx = rate_n_flags & RATE_VHT_MCS_RATE_CODE_MSK;
  rx_status->encoding = RX_ENC_VHT;
  rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
  if (rate_n_flags & RATE_MCS_BF_MSK)
   rx_status->enc_flags |= RX_ENC_FLAG_BF;
 } else {
  int rate = iwl_mvm_legacy_rate_to_mac80211_idx(rate_n_flags,
              rx_status->band);

  if (WARN(rate < 0 || rate > 0xFF,
    "Invalid rate flags 0x%x, band %d,\n",
    rate_n_flags, rx_status->band)) {
   kfree_skb(skb);
   return;
  }
  rx_status->rate_idx = rate;
 }






 if (unlikely((ieee80211_is_beacon(hdr->frame_control) ||
        ieee80211_is_probe_resp(hdr->frame_control)) &&
       mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_ENABLED))
  mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_FOUND;

 if (unlikely(ieee80211_is_beacon(hdr->frame_control) ||
       ieee80211_is_probe_resp(hdr->frame_control)))
  rx_status->boottime_ns = ktime_get_boottime_ns();

 iwl_mvm_pass_packet_to_mac80211(mvm, sta, napi, skb, hdr, len,
     crypt_len, rxb);
}
