
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_tx_column {int ant; } ;
struct rs_rate {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int iwl_mvm_bt_coex_is_ant_avail (struct iwl_mvm*,int ) ;

__attribute__((used)) static bool rs_ant_allow(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
    struct rs_rate *rate,
    const struct rs_tx_column *next_col)
{
 return iwl_mvm_bt_coex_is_ant_avail(mvm, next_col->ant);
}
