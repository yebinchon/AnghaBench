
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rx_mcs_map; } ;
struct ieee80211_sta_vht_cap {TYPE_1__ vht_mcs; } ;


 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int IEEE80211_VHT_MCS_SUPPORT_0_7 ;
 int IEEE80211_VHT_MCS_SUPPORT_0_8 ;
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ;
 int IWL_RATE_MCS_7_INDEX ;
 int IWL_RATE_MCS_8_INDEX ;
 int IWL_RATE_MCS_9_INDEX ;
 int WARN_ON_ONCE (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int rs_vht_highest_rx_mcs_index(struct ieee80211_sta_vht_cap *vht_cap,
           int nss)
{
 u16 rx_mcs = le16_to_cpu(vht_cap->vht_mcs.rx_mcs_map) &
  (0x3 << (2 * (nss - 1)));
 rx_mcs >>= (2 * (nss - 1));

 if (rx_mcs == IEEE80211_VHT_MCS_SUPPORT_0_7)
  return IWL_RATE_MCS_7_INDEX;
 else if (rx_mcs == IEEE80211_VHT_MCS_SUPPORT_0_8)
  return IWL_RATE_MCS_8_INDEX;
 else if (rx_mcs == IEEE80211_VHT_MCS_SUPPORT_0_9)
  return IWL_RATE_MCS_9_INDEX;

 WARN_ON_ONCE(rx_mcs != IEEE80211_VHT_MCS_NOT_SUPPORTED);
 return -1;
}
