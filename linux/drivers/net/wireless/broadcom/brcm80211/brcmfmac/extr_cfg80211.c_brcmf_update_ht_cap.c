
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int tx_params; int rx_mask; } ;
struct TYPE_4__ {int ht_supported; TYPE_1__ mcs; int ampdu_density; int ampdu_factor; int cap; } ;
struct ieee80211_supported_band {size_t band; TYPE_2__ ht_cap; } ;


 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MPDU_DENSITY_16 ;
 int WLC_BW_40MHZ_BIT ;
 int memset (int ,int,int) ;

__attribute__((used)) static void brcmf_update_ht_cap(struct ieee80211_supported_band *band,
    u32 bw_cap[2], u32 nchain)
{
 band->ht_cap.ht_supported = 1;
 if (bw_cap[band->band] & WLC_BW_40MHZ_BIT) {
  band->ht_cap.cap |= IEEE80211_HT_CAP_SGI_40;
  band->ht_cap.cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40;
 }
 band->ht_cap.cap |= IEEE80211_HT_CAP_SGI_20;
 band->ht_cap.cap |= IEEE80211_HT_CAP_DSSSCCK40;
 band->ht_cap.ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
 band->ht_cap.ampdu_density = IEEE80211_HT_MPDU_DENSITY_16;
 memset(band->ht_cap.mcs.rx_mask, 0xff, nchain);
 band->ht_cap.mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
}
