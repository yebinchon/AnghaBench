
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int hw; int dev; int debugfs; int idx; } ;
struct genl_info {int dummy; } ;


 int debugfs_remove_recursive (int ) ;
 int device_release_driver (int ) ;
 int device_unregister (int ) ;
 int hwsim_mcast_del_radio (int ,char const*,struct genl_info*) ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;

__attribute__((used)) static void mac80211_hwsim_del_radio(struct mac80211_hwsim_data *data,
         const char *hwname,
         struct genl_info *info)
{
 hwsim_mcast_del_radio(data->idx, hwname, info);
 debugfs_remove_recursive(data->debugfs);
 ieee80211_unregister_hw(data->hw);
 device_release_driver(data->dev);
 device_unregister(data->dev);
 ieee80211_free_hw(data->hw);
}
