
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int mwl8k_cmd_get_stat (struct ieee80211_hw*,struct ieee80211_low_level_stats*) ;

__attribute__((used)) static int mwl8k_get_stats(struct ieee80211_hw *hw,
      struct ieee80211_low_level_stats *stats)
{
 return mwl8k_cmd_get_stat(hw, stats);
}
