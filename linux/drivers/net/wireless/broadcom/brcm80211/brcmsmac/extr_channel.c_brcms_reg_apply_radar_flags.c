
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int center_freq; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 size_t NL80211_BAND_5GHZ ;
 int brcms_is_radar_freq (int ) ;

__attribute__((used)) static void brcms_reg_apply_radar_flags(struct wiphy *wiphy)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 int i;

 sband = wiphy->bands[NL80211_BAND_5GHZ];
 if (!sband)
  return;

 for (i = 0; i < sband->n_channels; i++) {
  ch = &sband->channels[i];

  if (!brcms_is_radar_freq(ch->center_freq))
   continue;





  if (!(ch->flags & IEEE80211_CHAN_DISABLED))
   ch->flags |= IEEE80211_CHAN_RADAR |
         IEEE80211_CHAN_NO_IR;
 }
}
