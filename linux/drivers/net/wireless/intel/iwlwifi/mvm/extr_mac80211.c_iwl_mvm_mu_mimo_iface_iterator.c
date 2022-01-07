
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mu_group_mgmt_notif {int user_position; int membership_status; } ;
struct ieee80211_vif {scalar_t__ mu_mimo_owner; } ;


 int ieee80211_update_mu_groups (struct ieee80211_vif*,int *,int *) ;

__attribute__((used)) static void iwl_mvm_mu_mimo_iface_iterator(void *_data, u8 *mac,
        struct ieee80211_vif *vif)
{
 if (vif->mu_mimo_owner) {
  struct iwl_mu_group_mgmt_notif *notif = _data;






  ieee80211_update_mu_groups(vif,
        (u8 *)&notif->membership_status,
        (u8 *)&notif->user_position);
 }
}
