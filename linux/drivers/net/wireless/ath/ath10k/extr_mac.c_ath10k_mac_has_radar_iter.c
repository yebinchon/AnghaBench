
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {scalar_t__ radar_enabled; } ;



__attribute__((used)) static void ath10k_mac_has_radar_iter(struct ieee80211_hw *hw,
          struct ieee80211_chanctx_conf *conf,
          void *data)
{
 bool *ret = data;

 if (!*ret && conf->radar_enabled)
  *ret = 1;
}
