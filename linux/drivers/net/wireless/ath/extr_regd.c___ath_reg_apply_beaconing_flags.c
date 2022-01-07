
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_channel {int flags; int beacon_found; int center_freq; } ;
struct ath_regulatory {int dummy; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;


 int ath_force_clear_no_ir_chan (struct wiphy*,struct ieee80211_channel*) ;
 scalar_t__ ath_is_radar_freq (int ,struct ath_regulatory*) ;
 int ath_reg_dyn_country_user_allow (struct ath_regulatory*) ;

__attribute__((used)) static void
__ath_reg_apply_beaconing_flags(struct wiphy *wiphy,
    struct ath_regulatory *reg,
    enum nl80211_reg_initiator initiator,
    struct ieee80211_channel *ch)
{
 if (ath_is_radar_freq(ch->center_freq, reg) ||
     (ch->flags & IEEE80211_CHAN_RADAR))
  return;

 switch (initiator) {
 case 129:
  ath_force_clear_no_ir_chan(wiphy, ch);
  break;
 case 128:
  if (ath_reg_dyn_country_user_allow(reg))
   ath_force_clear_no_ir_chan(wiphy, ch);
  break;
 default:
  if (ch->beacon_found)
   ch->flags &= ~IEEE80211_CHAN_NO_IR;
 }
}
