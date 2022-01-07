
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {void* tx_mcs_map; void* rx_mcs_map; } ;
struct TYPE_4__ {int vht_supported; int cap; TYPE_1__ vht_mcs; } ;
struct ieee80211_supported_band {size_t band; TYPE_2__ vht_cap; } ;
typedef void* __le16 ;


 int BRCMF_TXBF_MU_BFE_CAP ;
 int BRCMF_TXBF_MU_BFR_CAP ;
 int BRCMF_TXBF_SU_BFE_CAP ;
 int BRCMF_TXBF_SU_BFR_CAP ;
 int IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT ;
 int IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE ;
 int IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE ;
 int IEEE80211_VHT_CAP_SHORT_GI_160 ;
 int IEEE80211_VHT_CAP_SHORT_GI_80 ;
 int IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE ;
 int IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE ;
 int IEEE80211_VHT_CAP_VHT_LINK_ADAPTATION_VHT_MRQ_MFB ;
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ;
 size_t NL80211_BAND_2GHZ ;
 int WLC_BW_160MHZ_BIT ;
 void* brcmf_get_mcs_map (int,int ) ;

__attribute__((used)) static void brcmf_update_vht_cap(struct ieee80211_supported_band *band,
     u32 bw_cap[2], u32 nchain, u32 txstreams,
     u32 txbf_bfe_cap, u32 txbf_bfr_cap)
{
 __le16 mcs_map;


 if (band->band == NL80211_BAND_2GHZ)
  return;

 band->vht_cap.vht_supported = 1;

 band->vht_cap.cap |= IEEE80211_VHT_CAP_SHORT_GI_80;
 if (bw_cap[band->band] & WLC_BW_160MHZ_BIT) {
  band->vht_cap.cap |= IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ;
  band->vht_cap.cap |= IEEE80211_VHT_CAP_SHORT_GI_160;
 }

 mcs_map = brcmf_get_mcs_map(nchain, IEEE80211_VHT_MCS_SUPPORT_0_9);
 band->vht_cap.vht_mcs.rx_mcs_map = mcs_map;
 band->vht_cap.vht_mcs.tx_mcs_map = mcs_map;


 if (txbf_bfe_cap & BRCMF_TXBF_SU_BFE_CAP)
  band->vht_cap.cap |= IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE;
 if (txbf_bfe_cap & BRCMF_TXBF_MU_BFE_CAP)
  band->vht_cap.cap |= IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE;
 if (txbf_bfr_cap & BRCMF_TXBF_SU_BFR_CAP)
  band->vht_cap.cap |= IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE;
 if (txbf_bfr_cap & BRCMF_TXBF_MU_BFR_CAP)
  band->vht_cap.cap |= IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE;

 if ((txbf_bfe_cap || txbf_bfr_cap) && (txstreams > 1)) {
  band->vht_cap.cap |=
   (2 << IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT);
  band->vht_cap.cap |= ((txstreams - 1) <<
    IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT);
  band->vht_cap.cap |=
   IEEE80211_VHT_CAP_VHT_LINK_ADAPTATION_VHT_MRQ_MFB;
 }
}
