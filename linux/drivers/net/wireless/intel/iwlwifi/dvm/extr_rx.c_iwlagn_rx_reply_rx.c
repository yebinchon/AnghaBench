
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_rx_phy_res {int cfg_phy_cnt; int rate_n_flags; int phy_flags; int channel; int beacon_time_stamp; int timestamp; } ;
struct iwl_rx_packet {int data; } ;
struct iwl_rx_mpdu_res_start {int byte_count; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int ampdu_ref; void* ucode_beacon_time; struct iwl_rx_phy_res last_phy_res; int last_phy_res_valid; } ;
struct ieee80211_rx_status {int antenna; int enc_flags; int bw; int encoding; int ampdu_reference; int flag; scalar_t__ mactime; int signal; int band; int rate_idx; int freq; } ;
struct ieee80211_hdr {int dummy; } ;
typedef int __le32 ;


 int IWL_DEBUG_DROP (struct iwl_priv*,char*,int) ;
 int IWL_DEBUG_RX (struct iwl_priv*,char*,void*) ;
 int IWL_DEBUG_STATS_LIMIT (struct iwl_priv*,char*,int ,unsigned long long) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int RATE_INFO_BW_20 ;
 int RATE_INFO_BW_40 ;
 int RATE_MCS_GF_MSK ;
 int RATE_MCS_HT40_MSK ;
 int RATE_MCS_HT_MSK ;
 int RATE_MCS_SGI_MSK ;
 int RX_ENC_FLAG_HT_GF ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_HT ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_RES_PHY_FLAGS_AGG_MSK ;
 int RX_RES_PHY_FLAGS_ANTENNA_MSK ;
 int RX_RES_PHY_FLAGS_ANTENNA_POS ;
 int RX_RES_PHY_FLAGS_BAND_24_MSK ;
 int RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK ;
 int RX_RES_STATUS_NO_CRC32_ERROR ;
 int RX_RES_STATUS_NO_RXE_OVERFLOW ;
 int ieee80211_channel_to_frequency (int,int ) ;
 int iwlagn_calc_rssi (struct iwl_priv*,struct iwl_rx_phy_res*) ;
 int iwlagn_hwrate_to_mac80211_idx (int,int ) ;
 int iwlagn_pass_packet_to_mac80211 (struct iwl_priv*,struct ieee80211_hdr*,int,int,struct iwl_rx_cmd_buffer*,struct ieee80211_rx_status*) ;
 int iwlagn_translate_rx_status (struct iwl_priv*,void*) ;
 int le16_to_cpu (int) ;
 void* le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwlagn_rx_reply_rx(struct iwl_priv *priv,
          struct iwl_rx_cmd_buffer *rxb)
{
 struct ieee80211_hdr *header;
 struct ieee80211_rx_status rx_status = {};
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_rx_phy_res *phy_res;
 __le32 rx_pkt_status;
 struct iwl_rx_mpdu_res_start *amsdu;
 u32 len;
 u32 ampdu_status;
 u32 rate_n_flags;

 if (!priv->last_phy_res_valid) {
  IWL_ERR(priv, "MPDU frame without cached PHY data\n");
  return;
 }
 phy_res = &priv->last_phy_res;
 amsdu = (struct iwl_rx_mpdu_res_start *)pkt->data;
 header = (struct ieee80211_hdr *)(pkt->data + sizeof(*amsdu));
 len = le16_to_cpu(amsdu->byte_count);
 rx_pkt_status = *(__le32 *)(pkt->data + sizeof(*amsdu) + len);
 ampdu_status = iwlagn_translate_rx_status(priv,
        le32_to_cpu(rx_pkt_status));

 if ((unlikely(phy_res->cfg_phy_cnt > 20))) {
  IWL_DEBUG_DROP(priv, "dsp size out of range [0,20]: %d\n",
    phy_res->cfg_phy_cnt);
  return;
 }

 if (!(rx_pkt_status & RX_RES_STATUS_NO_CRC32_ERROR) ||
     !(rx_pkt_status & RX_RES_STATUS_NO_RXE_OVERFLOW)) {
  IWL_DEBUG_RX(priv, "Bad CRC or FIFO: 0x%08X.\n",
    le32_to_cpu(rx_pkt_status));
  return;
 }


 rate_n_flags = le32_to_cpu(phy_res->rate_n_flags);


 rx_status.mactime = le64_to_cpu(phy_res->timestamp);
 rx_status.band = (phy_res->phy_flags & RX_RES_PHY_FLAGS_BAND_24_MSK) ?
    NL80211_BAND_2GHZ : NL80211_BAND_5GHZ;
 rx_status.freq =
  ieee80211_channel_to_frequency(le16_to_cpu(phy_res->channel),
            rx_status.band);
 rx_status.rate_idx =
  iwlagn_hwrate_to_mac80211_idx(rate_n_flags, rx_status.band);
 rx_status.flag = 0;





 priv->ucode_beacon_time = le32_to_cpu(phy_res->beacon_time_stamp);


 rx_status.signal = iwlagn_calc_rssi(priv, phy_res);

 IWL_DEBUG_STATS_LIMIT(priv, "Rssi %d, TSF %llu\n",
  rx_status.signal, (unsigned long long)rx_status.mactime);
 rx_status.antenna =
  (le16_to_cpu(phy_res->phy_flags) & RX_RES_PHY_FLAGS_ANTENNA_MSK)
  >> RX_RES_PHY_FLAGS_ANTENNA_POS;


 if (phy_res->phy_flags & RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK)
  rx_status.enc_flags |= RX_ENC_FLAG_SHORTPRE;

 if (phy_res->phy_flags & RX_RES_PHY_FLAGS_AGG_MSK) {





  rx_status.flag |= RX_FLAG_AMPDU_DETAILS;
  rx_status.ampdu_reference = priv->ampdu_ref;
 }


 if (rate_n_flags & RATE_MCS_HT_MSK)
  rx_status.encoding = RX_ENC_HT;
 if (rate_n_flags & RATE_MCS_HT40_MSK)
  rx_status.bw = RATE_INFO_BW_40;
 else
  rx_status.bw = RATE_INFO_BW_20;
 if (rate_n_flags & RATE_MCS_SGI_MSK)
  rx_status.enc_flags |= RX_ENC_FLAG_SHORT_GI;
 if (rate_n_flags & RATE_MCS_GF_MSK)
  rx_status.enc_flags |= RX_ENC_FLAG_HT_GF;

 iwlagn_pass_packet_to_mac80211(priv, header, len, ampdu_status,
        rxb, &rx_status);
}
