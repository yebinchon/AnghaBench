
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int mwl8k_cmd_set_rts_threshold (struct ieee80211_hw*,int ) ;

__attribute__((used)) static int mwl8k_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 return mwl8k_cmd_set_rts_threshold(hw, value);
}
