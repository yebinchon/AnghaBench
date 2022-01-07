
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int mutex; int * tmp_chan; int roc_done; int roc_start; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int wiphy; struct mac80211_hwsim_data* priv; } ;


 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_dbg (int ,char*) ;

__attribute__((used)) static int mac80211_hwsim_croc(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;

 cancel_delayed_work_sync(&hwsim->roc_start);
 cancel_delayed_work_sync(&hwsim->roc_done);

 mutex_lock(&hwsim->mutex);
 hwsim->tmp_chan = ((void*)0);
 mutex_unlock(&hwsim->mutex);

 wiphy_dbg(hw->wiphy, "hwsim ROC canceled\n");

 return 0;
}
