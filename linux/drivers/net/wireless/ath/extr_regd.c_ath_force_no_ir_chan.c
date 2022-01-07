
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int flags; } ;


 int IEEE80211_CHAN_NO_IR ;

__attribute__((used)) static void ath_force_no_ir_chan(struct ieee80211_channel *ch)
{
 ch->flags |= IEEE80211_CHAN_NO_IR;
}
