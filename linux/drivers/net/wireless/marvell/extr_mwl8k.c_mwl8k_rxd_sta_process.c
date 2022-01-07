
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mwl8k_rxd_sta {int rx_ctrl; int channel; int pkt_len; int qos_control; int noise_level; int rssi; int rate_info; } ;
struct ieee80211_rx_status {scalar_t__ encoding; int flag; int band; int freq; scalar_t__ rate_idx; int enc_flags; int bw; int antenna; int signal; } ;
typedef int s8 ;
typedef int __le16 ;


 scalar_t__ MWL8K_LEGACY_5G_RATE_OFFSET ;
 int MWL8K_STA_RATE_INFO_40MHZ ;
 int MWL8K_STA_RATE_INFO_ANTSELECT (int) ;
 int MWL8K_STA_RATE_INFO_MCS_FORMAT ;
 scalar_t__ MWL8K_STA_RATE_INFO_RATEID (int) ;
 int MWL8K_STA_RATE_INFO_SHORTGI ;
 int MWL8K_STA_RATE_INFO_SHORTPRE ;
 int MWL8K_STA_RX_CTRL_DECRYPT_ERROR ;
 int MWL8K_STA_RX_CTRL_DEC_ERR_TYPE ;
 int MWL8K_STA_RX_CTRL_OWNED_BY_HOST ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 scalar_t__ RX_ENC_HT ;
 int RX_FLAG_MMIC_ERROR ;
 int ieee80211_channel_to_frequency (int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int rmb () ;

__attribute__((used)) static int
mwl8k_rxd_sta_process(void *_rxd, struct ieee80211_rx_status *status,
         __le16 *qos, s8 *noise)
{
 struct mwl8k_rxd_sta *rxd = _rxd;
 u16 rate_info;

 if (!(rxd->rx_ctrl & MWL8K_STA_RX_CTRL_OWNED_BY_HOST))
  return -1;
 rmb();

 rate_info = le16_to_cpu(rxd->rate_info);

 memset(status, 0, sizeof(*status));

 status->signal = -rxd->rssi;
 *noise = -rxd->noise_level;
 status->antenna = MWL8K_STA_RATE_INFO_ANTSELECT(rate_info);
 status->rate_idx = MWL8K_STA_RATE_INFO_RATEID(rate_info);

 if (rate_info & MWL8K_STA_RATE_INFO_SHORTPRE)
  status->enc_flags |= RX_ENC_FLAG_SHORTPRE;
 if (rate_info & MWL8K_STA_RATE_INFO_40MHZ)
  status->bw = RATE_INFO_BW_40;
 if (rate_info & MWL8K_STA_RATE_INFO_SHORTGI)
  status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
 if (rate_info & MWL8K_STA_RATE_INFO_MCS_FORMAT)
  status->encoding = RX_ENC_HT;

 if (rxd->channel > 14) {
  status->band = NL80211_BAND_5GHZ;
  if (!(status->encoding == RX_ENC_HT) &&
      status->rate_idx >= MWL8K_LEGACY_5G_RATE_OFFSET)
   status->rate_idx -= MWL8K_LEGACY_5G_RATE_OFFSET;
 } else {
  status->band = NL80211_BAND_2GHZ;
 }
 status->freq = ieee80211_channel_to_frequency(rxd->channel,
            status->band);

 *qos = rxd->qos_control;
 if ((rxd->rx_ctrl & MWL8K_STA_RX_CTRL_DECRYPT_ERROR) &&
     (rxd->rx_ctrl & MWL8K_STA_RX_CTRL_DEC_ERR_TYPE))
  status->flag |= RX_FLAG_MMIC_ERROR;

 return le16_to_cpu(rxd->pkt_len);
}
