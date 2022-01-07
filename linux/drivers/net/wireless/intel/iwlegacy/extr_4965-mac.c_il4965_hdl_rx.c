
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int raw; } ;
struct TYPE_4__ {scalar_t__ cmd; } ;
struct il_rx_pkt {TYPE_2__ u; TYPE_1__ hdr; } ;
struct il_rx_phy_res {int cfg_phy_cnt; int byte_count; int rate_n_flags; int phy_flags; int channel; int beacon_time_stamp; int timestamp; } ;
struct il_rx_mpdu_res_start {int byte_count; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_6__ {int ampdu_ref; struct il_rx_phy_res last_phy_res; int last_phy_res_valid; } ;
struct il_priv {TYPE_3__ _4965; void* ucode_beacon_time; } ;
struct ieee80211_rx_status {int antenna; int ampdu_reference; int flag; int enc_flags; int bw; int encoding; scalar_t__ mactime; int signal; int band; int rate_idx; int freq; } ;
struct ieee80211_hdr {int dummy; } ;
typedef int __le32 ;


 int D_DROP (char*,int) ;
 int D_RX (char*,void*) ;
 int D_STATS (char*,int ,unsigned long long) ;
 int IL_ERR (char*) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 scalar_t__ N_RX ;
 int RATE_INFO_BW_20 ;
 int RATE_INFO_BW_40 ;
 int RATE_MCS_HT40_MSK ;
 int RATE_MCS_HT_MSK ;
 int RATE_MCS_SGI_MSK ;
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
 int il4965_calc_rssi (struct il_priv*,struct il_rx_phy_res*) ;
 int il4965_hwrate_to_mac80211_idx (int,int ) ;
 int il4965_pass_packet_to_mac80211 (struct il_priv*,struct ieee80211_hdr*,int,int,struct il_rx_buf*,struct ieee80211_rx_status*) ;
 int il4965_translate_rx_status (struct il_priv*,void*) ;
 int le16_to_cpu (int) ;
 void* le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
il4965_hdl_rx(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct ieee80211_hdr *header;
 struct ieee80211_rx_status rx_status = {};
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_rx_phy_res *phy_res;
 __le32 rx_pkt_status;
 struct il_rx_mpdu_res_start *amsdu;
 u32 len;
 u32 ampdu_status;
 u32 rate_n_flags;
 if (pkt->hdr.cmd == N_RX) {
  phy_res = (struct il_rx_phy_res *)pkt->u.raw;
  header =
      (struct ieee80211_hdr *)(pkt->u.raw + sizeof(*phy_res) +
          phy_res->cfg_phy_cnt);

  len = le16_to_cpu(phy_res->byte_count);
  rx_pkt_status =
      *(__le32 *) (pkt->u.raw + sizeof(*phy_res) +
     phy_res->cfg_phy_cnt + len);
  ampdu_status = le32_to_cpu(rx_pkt_status);
 } else {
  if (!il->_4965.last_phy_res_valid) {
   IL_ERR("MPDU frame without cached PHY data\n");
   return;
  }
  phy_res = &il->_4965.last_phy_res;
  amsdu = (struct il_rx_mpdu_res_start *)pkt->u.raw;
  header = (struct ieee80211_hdr *)(pkt->u.raw + sizeof(*amsdu));
  len = le16_to_cpu(amsdu->byte_count);
  rx_pkt_status = *(__le32 *) (pkt->u.raw + sizeof(*amsdu) + len);
  ampdu_status =
      il4965_translate_rx_status(il, le32_to_cpu(rx_pkt_status));
 }

 if ((unlikely(phy_res->cfg_phy_cnt > 20))) {
  D_DROP("dsp size out of range [0,20]: %d\n",
         phy_res->cfg_phy_cnt);
  return;
 }

 if (!(rx_pkt_status & RX_RES_STATUS_NO_CRC32_ERROR) ||
     !(rx_pkt_status & RX_RES_STATUS_NO_RXE_OVERFLOW)) {
  D_RX("Bad CRC or FIFO: 0x%08X.\n", le32_to_cpu(rx_pkt_status));
  return;
 }


 rate_n_flags = le32_to_cpu(phy_res->rate_n_flags);


 rx_status.mactime = le64_to_cpu(phy_res->timestamp);
 rx_status.band =
     (phy_res->
      phy_flags & RX_RES_PHY_FLAGS_BAND_24_MSK) ? NL80211_BAND_2GHZ :
     NL80211_BAND_5GHZ;
 rx_status.freq =
     ieee80211_channel_to_frequency(le16_to_cpu(phy_res->channel),
        rx_status.band);
 rx_status.rate_idx =
     il4965_hwrate_to_mac80211_idx(rate_n_flags, rx_status.band);
 rx_status.flag = 0;





 il->ucode_beacon_time = le32_to_cpu(phy_res->beacon_time_stamp);


 rx_status.signal = il4965_calc_rssi(il, phy_res);

 D_STATS("Rssi %d, TSF %llu\n", rx_status.signal,
  (unsigned long long)rx_status.mactime);
 rx_status.antenna =
     (le16_to_cpu(phy_res->phy_flags) & RX_RES_PHY_FLAGS_ANTENNA_MSK) >>
     RX_RES_PHY_FLAGS_ANTENNA_POS;


 if (phy_res->phy_flags & RX_RES_PHY_FLAGS_SHORT_PREAMBLE_MSK)
  rx_status.enc_flags |= RX_ENC_FLAG_SHORTPRE;


 if (rate_n_flags & RATE_MCS_HT_MSK)
  rx_status.encoding = RX_ENC_HT;
 if (rate_n_flags & RATE_MCS_HT40_MSK)
  rx_status.bw = RATE_INFO_BW_40;
 else
  rx_status.bw = RATE_INFO_BW_20;
 if (rate_n_flags & RATE_MCS_SGI_MSK)
  rx_status.enc_flags |= RX_ENC_FLAG_SHORT_GI;

 if (phy_res->phy_flags & RX_RES_PHY_FLAGS_AGG_MSK) {





  rx_status.flag |= RX_FLAG_AMPDU_DETAILS;
  rx_status.ampdu_reference = il->_4965.ampdu_ref;
 }

 il4965_pass_packet_to_mac80211(il, header, len, ampdu_status, rxb,
           &rx_status);
}
