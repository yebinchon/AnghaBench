
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int dummy; } ;



__attribute__((used)) static void ath10k_mac_num_chanctxs_iter(struct ieee80211_hw *hw,
      struct ieee80211_chanctx_conf *conf,
      void *data)
{
 int *num = data;

 (*num)++;
}
