
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_tx_rate {int idx; int flags; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int IEEE80211_TX_RC_160_MHZ_WIDTH ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_80_MHZ_WIDTH ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_VHT_MCS ;
 int RATE_HT_MCS_GF_MSK ;
 int RATE_HT_MCS_INDEX_MSK ;




 int RATE_MCS_CHAN_WIDTH_MSK ;
 int RATE_MCS_HT_MSK ;
 int RATE_MCS_SGI_MSK ;
 int RATE_MCS_VHT_MSK ;
 int RATE_VHT_MCS_NSS_MSK ;
 int RATE_VHT_MCS_NSS_POS ;
 int RATE_VHT_MCS_RATE_CODE_MSK ;
 int ieee80211_rate_set_vht (struct ieee80211_tx_rate*,int,int) ;
 int iwl_mvm_legacy_rate_to_mac80211_idx (int,int) ;

void iwl_mvm_hwrate_to_tx_rate(u32 rate_n_flags,
          enum nl80211_band band,
          struct ieee80211_tx_rate *r)
{
 if (rate_n_flags & RATE_HT_MCS_GF_MSK)
  r->flags |= IEEE80211_TX_RC_GREEN_FIELD;
 switch (rate_n_flags & RATE_MCS_CHAN_WIDTH_MSK) {
 case 130:
  break;
 case 129:
  r->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
  break;
 case 128:
  r->flags |= IEEE80211_TX_RC_80_MHZ_WIDTH;
  break;
 case 131:
  r->flags |= IEEE80211_TX_RC_160_MHZ_WIDTH;
  break;
 }
 if (rate_n_flags & RATE_MCS_SGI_MSK)
  r->flags |= IEEE80211_TX_RC_SHORT_GI;
 if (rate_n_flags & RATE_MCS_HT_MSK) {
  r->flags |= IEEE80211_TX_RC_MCS;
  r->idx = rate_n_flags & RATE_HT_MCS_INDEX_MSK;
 } else if (rate_n_flags & RATE_MCS_VHT_MSK) {
  ieee80211_rate_set_vht(
   r, rate_n_flags & RATE_VHT_MCS_RATE_CODE_MSK,
   ((rate_n_flags & RATE_VHT_MCS_NSS_MSK) >>
      RATE_VHT_MCS_NSS_POS) + 1);
  r->flags |= IEEE80211_TX_RC_VHT_MCS;
 } else {
  r->idx = iwl_mvm_legacy_rate_to_mac80211_idx(rate_n_flags,
            band);
 }
}
