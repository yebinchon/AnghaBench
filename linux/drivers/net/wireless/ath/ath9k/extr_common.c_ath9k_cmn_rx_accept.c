
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int seq_ctrl; int addr1; int frame_control; } ;
struct ath_rx_status {scalar_t__ rs_keyix; int rs_status; } ;
struct ath_hw {scalar_t__ is_monitoring; } ;
struct ath_common {int ccmp_keymap; int tkip_keymap; struct ath_hw* ah; } ;
typedef int __le16 ;


 int ATH9K_RXERR_CRC ;
 int ATH9K_RXERR_DECRYPT ;
 int ATH9K_RXERR_KEYMISS ;
 int ATH9K_RXERR_MIC ;
 scalar_t__ ATH9K_RXKEYIX_INVALID ;
 unsigned int FIF_FCSFAIL ;
 int IEEE80211_SCTL_FRAG ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int ieee80211_has_morefrags (int ) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 int ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ test_bit (scalar_t__,int ) ;

bool ath9k_cmn_rx_accept(struct ath_common *common,
    struct ieee80211_hdr *hdr,
    struct ieee80211_rx_status *rxs,
    struct ath_rx_status *rx_stats,
    bool *decrypt_error,
    unsigned int rxfilter)
{
 struct ath_hw *ah = common->ah;
 bool is_mc, is_valid_tkip, strip_mic, mic_error;
 __le16 fc;

 fc = hdr->frame_control;

 is_mc = !!is_multicast_ether_addr(hdr->addr1);
 is_valid_tkip = rx_stats->rs_keyix != ATH9K_RXKEYIX_INVALID &&
  test_bit(rx_stats->rs_keyix, common->tkip_keymap);
 strip_mic = is_valid_tkip && ieee80211_is_data(fc) &&
  ieee80211_has_protected(fc) &&
  !(rx_stats->rs_status &
  (ATH9K_RXERR_DECRYPT | ATH9K_RXERR_CRC | ATH9K_RXERR_MIC |
   ATH9K_RXERR_KEYMISS));






 if (rx_stats->rs_keyix == ATH9K_RXKEYIX_INVALID ||
     !test_bit(rx_stats->rs_keyix, common->ccmp_keymap))
  rx_stats->rs_status &= ~ATH9K_RXERR_KEYMISS;

 mic_error = is_valid_tkip && !ieee80211_is_ctl(fc) &&
  !ieee80211_has_morefrags(fc) &&
  !(le16_to_cpu(hdr->seq_ctrl) & IEEE80211_SCTL_FRAG) &&
  (rx_stats->rs_status & ATH9K_RXERR_MIC);







 if (rx_stats->rs_status != 0) {
  u8 status_mask;

  if (rx_stats->rs_status & ATH9K_RXERR_CRC) {
   rxs->flag |= RX_FLAG_FAILED_FCS_CRC;
   mic_error = 0;
  }

  if ((rx_stats->rs_status & ATH9K_RXERR_DECRYPT) ||
      (!is_mc && (rx_stats->rs_status & ATH9K_RXERR_KEYMISS))) {
   *decrypt_error = 1;
   mic_error = 0;
  }







  status_mask = ATH9K_RXERR_DECRYPT | ATH9K_RXERR_MIC |
         ATH9K_RXERR_KEYMISS;

  if (ah->is_monitoring && (rxfilter & FIF_FCSFAIL))
   status_mask |= ATH9K_RXERR_CRC;

  if (rx_stats->rs_status & ~status_mask)
   return 0;
 }







 if (strip_mic)
  rxs->flag |= RX_FLAG_MMIC_STRIPPED;
 else if (is_mc && mic_error)
  rxs->flag |= RX_FLAG_MMIC_ERROR;

 return 1;
}
