
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_rx_status {int flag; int ampdu_reference; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ar9170 {int ampdu_ref; } ;
typedef int __le16 ;


 int AR9170_RX_STATUS_MPDU ;
 int AR9170_RX_STATUS_MPDU_SINGLE ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_FLAG_AMPDU_LAST_KNOWN ;
 scalar_t__ ieee80211_is_ack (int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_back (int ) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_data_present (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;

__attribute__((used)) static bool carl9170_ampdu_check(struct ar9170 *ar, u8 *buf, u8 ms,
     struct ieee80211_rx_status *rx_status)
{
 __le16 fc;

 if ((ms & AR9170_RX_STATUS_MPDU) == AR9170_RX_STATUS_MPDU_SINGLE) {





  return 1;
 }

 rx_status->flag |= RX_FLAG_AMPDU_DETAILS | RX_FLAG_AMPDU_LAST_KNOWN;
 rx_status->ampdu_reference = ar->ampdu_ref;
 fc = ((struct ieee80211_hdr *)buf)->frame_control;
 if (ieee80211_is_data_qos(fc) && ieee80211_is_data_present(fc))
  return 1;

 if (ieee80211_is_ack(fc) || ieee80211_is_back(fc) ||
     ieee80211_is_back_req(fc))
  return 1;

 if (ieee80211_is_action(fc))
  return 1;

 return 0;
}
