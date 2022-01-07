
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int dummy; } ;
struct ieee80211_rate {int bitrate; int hw_value; int hw_value_short; int flags; } ;
struct TYPE_2__ {int ieee; scalar_t__ plcp; } ;


 int IEEE80211_RATE_SHORT_PREAMBLE ;
 int IL_FIRST_CCK_RATE ;
 int IL_LAST_CCK_RATE ;
 scalar_t__ RATE_1M_PLCP ;
 int RATE_COUNT_LEGACY ;
 TYPE_1__* il_rates ;

__attribute__((used)) static void
il4965_init_hw_rates(struct il_priv *il, struct ieee80211_rate *rates)
{
 int i;

 for (i = 0; i < RATE_COUNT_LEGACY; i++) {
  rates[i].bitrate = il_rates[i].ieee * 5;
  rates[i].hw_value = i;
  rates[i].hw_value_short = i;
  rates[i].flags = 0;
  if ((i >= IL_FIRST_CCK_RATE) && (i <= IL_LAST_CCK_RATE)) {



   rates[i].flags |=
       (il_rates[i].plcp ==
        RATE_1M_PLCP) ? 0 : IEEE80211_RATE_SHORT_PREAMBLE;
  }
 }
}
