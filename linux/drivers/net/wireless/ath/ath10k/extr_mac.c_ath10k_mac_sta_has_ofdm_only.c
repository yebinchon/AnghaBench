
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int* supp_rates; } ;


 int ATH10K_MAC_FIRST_OFDM_RATE_IDX ;
 size_t NL80211_BAND_2GHZ ;

__attribute__((used)) static bool ath10k_mac_sta_has_ofdm_only(struct ieee80211_sta *sta)
{
 return sta->supp_rates[NL80211_BAND_2GHZ] >>
        ATH10K_MAC_FIRST_OFDM_RATE_IDX;
}
