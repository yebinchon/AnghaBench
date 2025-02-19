
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int mutex; int * hw_scan_vif; int * hw_scan_request; int * tmp_chan; int hw; int hw_scan; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int wiphy; struct mac80211_hwsim_data* priv; } ;
struct cfg80211_scan_info {int aborted; } ;


 int cancel_delayed_work_sync (int *) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_dbg (int ,char*) ;

__attribute__((used)) static void mac80211_hwsim_cancel_hw_scan(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;
 struct cfg80211_scan_info info = {
  .aborted = 1,
 };

 wiphy_dbg(hw->wiphy, "hwsim cancel_hw_scan\n");

 cancel_delayed_work_sync(&hwsim->hw_scan);

 mutex_lock(&hwsim->mutex);
 ieee80211_scan_completed(hwsim->hw, &info);
 hwsim->tmp_chan = ((void*)0);
 hwsim->hw_scan_request = ((void*)0);
 hwsim->hw_scan_vif = ((void*)0);
 mutex_unlock(&hwsim->mutex);
}
