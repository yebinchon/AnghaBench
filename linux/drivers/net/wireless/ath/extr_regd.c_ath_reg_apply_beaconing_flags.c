
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {unsigned int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int dummy; } ;
struct ath_regulatory {int dummy; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;
 int __ath_reg_apply_beaconing_flags (struct wiphy*,struct ath_regulatory*,int,struct ieee80211_channel*) ;

__attribute__((used)) static void
ath_reg_apply_beaconing_flags(struct wiphy *wiphy,
         struct ath_regulatory *reg,
         enum nl80211_reg_initiator initiator)
{
 enum nl80211_band band;
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 unsigned int i;

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  if (!wiphy->bands[band])
   continue;
  sband = wiphy->bands[band];
  for (i = 0; i < sband->n_channels; i++) {
   ch = &sband->channels[i];
   __ath_reg_apply_beaconing_flags(wiphy, reg,
       initiator, ch);
  }
 }
}
