
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_rx_status {int rate_idx; int encoding; int enc_flags; int bw; int band; int freq; int flag; } ;
struct ieee80211_channel {int center_freq; int band; } ;
struct ar9170_rx_macstatus {int error; int status; } ;
struct ar9170_rx_head {int* plcp; } ;
struct ar9170 {int filter_state; TYPE_1__* hw; struct ieee80211_channel* channel; int sniffer_enabled; int tx_fcs_errors; } ;
struct TYPE_2__ {int wiphy; } ;


 int AR9170_ENC_ALG_NONE ;
 int AR9170_ENC_ALG_TKIP ;
 int AR9170_RX_ENC_SOFTWARE ;
 int AR9170_RX_ERROR_DECRYPT ;
 int AR9170_RX_ERROR_FCS ;
 int AR9170_RX_ERROR_MMIC ;
 int AR9170_RX_ERROR_PLCP ;
 int AR9170_RX_ERROR_WRONG_RA ;




 int AR9170_RX_STATUS_MODULATION ;




 int AR9170_RX_STATUS_SHORT_PREAMBLE ;
 int BUG () ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int ENODATA ;
 int ENOSYS ;
 int FIF_FCSFAIL ;
 int FIF_PLCPFAIL ;
 int NL80211_BAND_2GHZ ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_HT ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int RX_FLAG_MMIC_ERROR ;
 int ar9170_get_decrypt_type (struct ar9170_rx_macstatus*) ;
 int clamp (int,int ,int) ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ unlikely (int) ;
 int wiphy_dbg (int ,char*,int) ;
 int wiphy_err (int ,char*,int) ;

__attribute__((used)) static int carl9170_rx_mac_status(struct ar9170 *ar,
 struct ar9170_rx_head *head, struct ar9170_rx_macstatus *mac,
 struct ieee80211_rx_status *status)
{
 struct ieee80211_channel *chan;
 u8 error, decrypt;

 BUILD_BUG_ON(sizeof(struct ar9170_rx_head) != 12);
 BUILD_BUG_ON(sizeof(struct ar9170_rx_macstatus) != 4);

 error = mac->error;

 if (error & AR9170_RX_ERROR_WRONG_RA) {
  if (!ar->sniffer_enabled)
   return -EINVAL;
 }

 if (error & AR9170_RX_ERROR_PLCP) {
  if (!(ar->filter_state & FIF_PLCPFAIL))
   return -EINVAL;

  status->flag |= RX_FLAG_FAILED_PLCP_CRC;
 }

 if (error & AR9170_RX_ERROR_FCS) {
  ar->tx_fcs_errors++;

  if (!(ar->filter_state & FIF_FCSFAIL))
   return -EINVAL;

  status->flag |= RX_FLAG_FAILED_FCS_CRC;
 }

 decrypt = ar9170_get_decrypt_type(mac);
 if (!(decrypt & AR9170_RX_ENC_SOFTWARE) &&
     decrypt != AR9170_ENC_ALG_NONE) {
  if ((decrypt == AR9170_ENC_ALG_TKIP) &&
      (error & AR9170_RX_ERROR_MMIC))
   status->flag |= RX_FLAG_MMIC_ERROR;

  status->flag |= RX_FLAG_DECRYPTED;
 }

 if (error & AR9170_RX_ERROR_DECRYPT && !ar->sniffer_enabled)
  return -ENODATA;

 error &= ~(AR9170_RX_ERROR_MMIC |
     AR9170_RX_ERROR_FCS |
     AR9170_RX_ERROR_WRONG_RA |
     AR9170_RX_ERROR_DECRYPT |
     AR9170_RX_ERROR_PLCP);


 if (unlikely(error)) {


  if (net_ratelimit())
   wiphy_dbg(ar->hw->wiphy, "received frame with "
          "suspicious error code (%#x).\n", error);

  return -EINVAL;
 }

 chan = ar->channel;
 if (chan) {
  status->band = chan->band;
  status->freq = chan->center_freq;
 }

 switch (mac->status & AR9170_RX_STATUS_MODULATION) {
 case 139:
  if (mac->status & AR9170_RX_STATUS_SHORT_PREAMBLE)
   status->enc_flags |= RX_ENC_FLAG_SHORTPRE;
  switch (head->plcp[0]) {
  case 142:
   status->rate_idx = 0;
   break;
  case 141:
   status->rate_idx = 1;
   break;
  case 140:
   status->rate_idx = 2;
   break;
  case 143:
   status->rate_idx = 3;
   break;
  default:
   if (net_ratelimit()) {
    wiphy_err(ar->hw->wiphy, "invalid plcp cck "
           "rate (%x).\n", head->plcp[0]);
   }

   return -EINVAL;
  }
  break;

 case 138:
 case 136:
  switch (head->plcp[0] & 0xf) {
  case 129:
   status->rate_idx = 0;
   break;
  case 128:
   status->rate_idx = 1;
   break;
  case 135:
   status->rate_idx = 2;
   break;
  case 134:
   status->rate_idx = 3;
   break;
  case 133:
   status->rate_idx = 4;
   break;
  case 132:
   status->rate_idx = 5;
   break;
  case 131:
   status->rate_idx = 6;
   break;
  case 130:
   status->rate_idx = 7;
   break;
  default:
   if (net_ratelimit()) {
    wiphy_err(ar->hw->wiphy, "invalid plcp ofdm "
     "rate (%x).\n", head->plcp[0]);
   }

   return -EINVAL;
  }
  if (status->band == NL80211_BAND_2GHZ)
   status->rate_idx += 4;
  break;

 case 137:
  if (head->plcp[3] & 0x80)
   status->bw = RATE_INFO_BW_40;
  if (head->plcp[6] & 0x80)
   status->enc_flags |= RX_ENC_FLAG_SHORT_GI;

  status->rate_idx = clamp(head->plcp[3] & 0x7f, 0, 75);
  status->encoding = RX_ENC_HT;
  break;

 default:
  BUG();
  return -ENOSYS;
 }

 return 0;
}
