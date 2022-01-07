
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_vif {struct iwl_mvm* mvm; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {size_t dbgfs_rx_phyinfo; int mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; } ;
struct ieee80211_vif {int chanctx_conf; } ;
struct ieee80211_chanctx_conf {int rx_chains_dynamic; int rx_chains_static; int min_def; scalar_t__ drv_priv; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int iwl_mvm_phy_ctxt_changed (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,int *,int ,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int kstrtou16 (char*,int ,size_t*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static ssize_t iwl_dbgfs_rx_phyinfo_write(struct ieee80211_vif *vif, char *buf,
       size_t count, loff_t *ppos)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm *mvm = mvmvif->mvm;
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct iwl_mvm_phy_ctxt *phy_ctxt;
 u16 value;
 int ret;

 ret = kstrtou16(buf, 0, &value);
 if (ret)
  return ret;

 mutex_lock(&mvm->mutex);
 rcu_read_lock();

 chanctx_conf = rcu_dereference(vif->chanctx_conf);

 if (!chanctx_conf) {
  rcu_read_unlock();
  mutex_unlock(&mvm->mutex);
  return -EINVAL;
 }

 phy_ctxt = &mvm->phy_ctxts[*(u16 *)chanctx_conf->drv_priv];
 rcu_read_unlock();

 mvm->dbgfs_rx_phyinfo = value;

 ret = iwl_mvm_phy_ctxt_changed(mvm, phy_ctxt, &chanctx_conf->min_def,
           chanctx_conf->rx_chains_static,
           chanctx_conf->rx_chains_dynamic);
 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
