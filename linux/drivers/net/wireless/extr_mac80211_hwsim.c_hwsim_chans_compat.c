
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {scalar_t__ center_freq; } ;



__attribute__((used)) static bool hwsim_chans_compat(struct ieee80211_channel *c1,
          struct ieee80211_channel *c2)
{
 if (!c1 || !c2)
  return 0;

 return c1->center_freq == c2->center_freq;
}
