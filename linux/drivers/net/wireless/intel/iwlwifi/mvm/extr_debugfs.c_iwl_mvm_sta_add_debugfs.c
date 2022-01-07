
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct dentry {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int MVM_DEBUGFS_ADD_STA_FILE (int ,struct dentry*,int) ;
 int amsdu_len ;
 scalar_t__ iwl_mvm_has_tlc_offload (struct iwl_mvm*) ;
 int rs_data ;

void iwl_mvm_sta_add_debugfs(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_sta *sta,
        struct dentry *dir)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 if (iwl_mvm_has_tlc_offload(mvm)) {
  MVM_DEBUGFS_ADD_STA_FILE(rs_data, dir, 0400);
 }
 MVM_DEBUGFS_ADD_STA_FILE(amsdu_len, dir, 0600);
}
