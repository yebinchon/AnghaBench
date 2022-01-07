
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int scanning; int mutex; int scan_addr; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;


 int eth_zero_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static void mac80211_hwsim_sw_scan_complete(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;

 mutex_lock(&hwsim->mutex);

 pr_debug("hwsim sw_scan_complete\n");
 hwsim->scanning = 0;
 eth_zero_addr(hwsim->scan_addr);

 mutex_unlock(&hwsim->mutex);
}
