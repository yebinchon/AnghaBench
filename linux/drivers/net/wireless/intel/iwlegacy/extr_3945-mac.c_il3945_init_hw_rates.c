
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int dummy; } ;
struct ieee80211_rate {int bitrate; int hw_value; int hw_value_short; int flags; } ;
struct TYPE_2__ {int ieee; int plcp; } ;


 int IEEE80211_RATE_SHORT_PREAMBLE ;
 int IL39_LAST_OFDM_RATE ;
 int IL_FIRST_OFDM_RATE ;
 int RATE_COUNT_LEGACY ;
 TYPE_1__* il3945_rates ;

__attribute__((used)) static void
il3945_init_hw_rates(struct il_priv *il, struct ieee80211_rate *rates)
{
 int i;

 for (i = 0; i < RATE_COUNT_LEGACY; i++) {
  rates[i].bitrate = il3945_rates[i].ieee * 5;
  rates[i].hw_value = i;
  rates[i].hw_value_short = i;
  rates[i].flags = 0;
  if (i > IL39_LAST_OFDM_RATE || i < IL_FIRST_OFDM_RATE) {



   rates[i].flags |=
       (il3945_rates[i].plcp ==
        10) ? 0 : IEEE80211_RATE_SHORT_PREAMBLE;
  }
 }
}
