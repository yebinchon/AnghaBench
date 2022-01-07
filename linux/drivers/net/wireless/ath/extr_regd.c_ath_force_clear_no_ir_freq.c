
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 int ath_force_clear_no_ir_chan (struct wiphy*,struct ieee80211_channel*) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int ) ;

__attribute__((used)) static void ath_force_clear_no_ir_freq(struct wiphy *wiphy, u16 center_freq)
{
 struct ieee80211_channel *ch;

 ch = ieee80211_get_channel(wiphy, center_freq);
 if (!ch)
  return;

 ath_force_clear_no_ir_chan(wiphy, ch);
}
