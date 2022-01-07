
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cap; } ;
struct ieee80211_sta {scalar_t__ bandwidth; TYPE_1__ vht_cap; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_phy_mode { ____Placeholder_wmi_phy_mode } wmi_phy_mode ;


 scalar_t__ IEEE80211_STA_RX_BW_160 ;
 scalar_t__ IEEE80211_STA_RX_BW_20 ;
 scalar_t__ IEEE80211_STA_RX_BW_40 ;
 scalar_t__ IEEE80211_STA_RX_BW_80 ;


 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK ;
 int MODE_11AC_VHT160 ;
 int MODE_11AC_VHT20 ;
 int MODE_11AC_VHT40 ;
 int MODE_11AC_VHT80 ;
 int MODE_11AC_VHT80_80 ;
 int MODE_UNKNOWN ;

__attribute__((used)) static enum wmi_phy_mode ath10k_mac_get_phymode_vht(struct ath10k *ar,
          struct ieee80211_sta *sta)
{
 if (sta->bandwidth == IEEE80211_STA_RX_BW_160) {
  switch (sta->vht_cap.cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK) {
  case 129:
   return MODE_11AC_VHT160;
  case 128:
   return MODE_11AC_VHT80_80;
  default:

   return MODE_11AC_VHT160;
  }
 }

 if (sta->bandwidth == IEEE80211_STA_RX_BW_80)
  return MODE_11AC_VHT80;

 if (sta->bandwidth == IEEE80211_STA_RX_BW_40)
  return MODE_11AC_VHT40;

 if (sta->bandwidth == IEEE80211_STA_RX_BW_20)
  return MODE_11AC_VHT20;

 return MODE_UNKNOWN;
}
