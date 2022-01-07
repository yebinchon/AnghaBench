
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac80211_hwsim_data {int scanning; int mutex; int survey_data; int scan_addr; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;


 int ETH_ALEN ;
 int memcpy (int ,int const*,int ) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static void mac80211_hwsim_sw_scan(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       const u8 *mac_addr)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;

 mutex_lock(&hwsim->mutex);

 if (hwsim->scanning) {
  pr_debug("two hwsim sw_scans detected!\n");
  goto out;
 }

 pr_debug("hwsim sw_scan request, prepping stuff\n");

 memcpy(hwsim->scan_addr, mac_addr, ETH_ALEN);
 hwsim->scanning = 1;
 memset(hwsim->survey_data, 0, sizeof(hwsim->survey_data));

out:
 mutex_unlock(&hwsim->mutex);
}
