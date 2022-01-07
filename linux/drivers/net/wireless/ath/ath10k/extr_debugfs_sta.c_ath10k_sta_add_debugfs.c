
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct dentry {int dummy; } ;
struct ath10k {int dummy; } ;


 scalar_t__ ath10k_debug_is_extd_tx_stats_enabled (struct ath10k*) ;
 scalar_t__ ath10k_peer_stats_enabled (struct ath10k*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct ieee80211_sta*,int *) ;
 int fops_addba ;
 int fops_addba_resp ;
 int fops_aggr_mode ;
 int fops_delba ;
 int fops_peer_debug_trigger ;
 int fops_peer_ps_state ;
 int fops_tid_stats_dump ;
 int fops_tx_stats ;

void ath10k_sta_add_debugfs(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, struct dentry *dir)
{
 struct ath10k *ar = hw->priv;

 debugfs_create_file("aggr_mode", 0644, dir, sta, &fops_aggr_mode);
 debugfs_create_file("addba", 0200, dir, sta, &fops_addba);
 debugfs_create_file("addba_resp", 0200, dir, sta, &fops_addba_resp);
 debugfs_create_file("delba", 0200, dir, sta, &fops_delba);
 debugfs_create_file("peer_debug_trigger", 0600, dir, sta,
       &fops_peer_debug_trigger);
 debugfs_create_file("dump_tid_stats", 0400, dir, sta,
       &fops_tid_stats_dump);

 if (ath10k_peer_stats_enabled(ar) &&
     ath10k_debug_is_extd_tx_stats_enabled(ar))
  debugfs_create_file("tx_stats", 0400, dir, sta,
        &fops_tx_stats);
 debugfs_create_file("peer_ps_state", 0400, dir, sta,
       &fops_peer_ps_state);
}
