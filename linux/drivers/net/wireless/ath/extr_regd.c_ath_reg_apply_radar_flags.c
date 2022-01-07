
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {unsigned int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int center_freq; } ;
struct ath_regulatory {int dummy; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 size_t NL80211_BAND_5GHZ ;
 int ath_is_radar_freq (int ,struct ath_regulatory*) ;

__attribute__((used)) static void ath_reg_apply_radar_flags(struct wiphy *wiphy,
          struct ath_regulatory *reg)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 unsigned int i;

 if (!wiphy->bands[NL80211_BAND_5GHZ])
  return;

 sband = wiphy->bands[NL80211_BAND_5GHZ];

 for (i = 0; i < sband->n_channels; i++) {
  ch = &sband->channels[i];
  if (!ath_is_radar_freq(ch->center_freq, reg))
   continue;
  if (!(ch->flags & IEEE80211_CHAN_DISABLED))
   ch->flags |= IEEE80211_CHAN_RADAR |
         IEEE80211_CHAN_NO_IR;
 }
}
