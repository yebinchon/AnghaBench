
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcn36xx_hal_config_sta_params {void* dsss_cck_mode_40mhz; void* delayed_ba_support; void* green_field_capable; void* sgi_40mhz; void* sgi_20Mhz; void* max_amsdu_size; int max_ampdu_density; int max_ampdu_size; void* lsig_txop_protection; void* tx_channel_width_set; scalar_t__ ht_capable; } ;
struct TYPE_2__ {unsigned long cap; int ampdu_density; int ampdu_factor; scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;


 int IEEE80211_HT_CAP_DELAY_BA ;
 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_GRN_FLD ;
 int IEEE80211_HT_CAP_LSIG_TXOP_PROT ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 void* is_cap_supported (unsigned long,int ) ;

__attribute__((used)) static void wcn36xx_smd_set_sta_ht_params(struct ieee80211_sta *sta,
  struct wcn36xx_hal_config_sta_params *sta_params)
{
 if (sta->ht_cap.ht_supported) {
  unsigned long caps = sta->ht_cap.cap;
  sta_params->ht_capable = sta->ht_cap.ht_supported;
  sta_params->tx_channel_width_set = is_cap_supported(caps,
   IEEE80211_HT_CAP_SUP_WIDTH_20_40);
  sta_params->lsig_txop_protection = is_cap_supported(caps,
   IEEE80211_HT_CAP_LSIG_TXOP_PROT);

  sta_params->max_ampdu_size = sta->ht_cap.ampdu_factor;
  sta_params->max_ampdu_density = sta->ht_cap.ampdu_density;
  sta_params->max_amsdu_size = is_cap_supported(caps,
   IEEE80211_HT_CAP_MAX_AMSDU);
  sta_params->sgi_20Mhz = is_cap_supported(caps,
   IEEE80211_HT_CAP_SGI_20);
  sta_params->sgi_40mhz = is_cap_supported(caps,
   IEEE80211_HT_CAP_SGI_40);
  sta_params->green_field_capable = is_cap_supported(caps,
   IEEE80211_HT_CAP_GRN_FLD);
  sta_params->delayed_ba_support = is_cap_supported(caps,
   IEEE80211_HT_CAP_DELAY_BA);
  sta_params->dsss_cck_mode_40mhz = is_cap_supported(caps,
   IEEE80211_HT_CAP_DSSSCCK40);
 }
}
