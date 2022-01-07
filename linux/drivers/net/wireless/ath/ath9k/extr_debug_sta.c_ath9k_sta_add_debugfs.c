
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct dentry {int dummy; } ;
struct ath_node {int dummy; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct ath_node*,int *) ;
 int fops_node_aggr ;
 int fops_node_recv ;

void ath9k_sta_add_debugfs(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta,
      struct dentry *dir)
{
 struct ath_node *an = (struct ath_node *)sta->drv_priv;

 debugfs_create_file("node_aggr", 0444, dir, an, &fops_node_aggr);
 debugfs_create_file("node_recv", 0444, dir, an, &fops_node_recv);
}
