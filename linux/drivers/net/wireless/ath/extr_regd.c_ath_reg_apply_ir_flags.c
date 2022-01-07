
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ath_regulatory {int dummy; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 size_t NL80211_BAND_2GHZ ;


 int ath_force_clear_no_ir_freq (struct wiphy*,int) ;
 int ath_force_no_ir_freq (struct wiphy*,int) ;
 int ath_reg_dyn_country_user_allow (struct ath_regulatory*) ;

__attribute__((used)) static void
ath_reg_apply_ir_flags(struct wiphy *wiphy,
         struct ath_regulatory *reg,
         enum nl80211_reg_initiator initiator)
{
 struct ieee80211_supported_band *sband;

 sband = wiphy->bands[NL80211_BAND_2GHZ];
 if (!sband)
  return;

 switch(initiator) {
 case 129:
  ath_force_clear_no_ir_freq(wiphy, 2467);
  ath_force_clear_no_ir_freq(wiphy, 2472);
  break;
 case 128:
  if (!ath_reg_dyn_country_user_allow(reg))
   break;
  ath_force_clear_no_ir_freq(wiphy, 2467);
  ath_force_clear_no_ir_freq(wiphy, 2472);
  break;
 default:
  ath_force_no_ir_freq(wiphy, 2467);
  ath_force_no_ir_freq(wiphy, 2472);
 }
}
