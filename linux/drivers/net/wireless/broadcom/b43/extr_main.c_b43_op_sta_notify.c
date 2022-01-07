
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wl {struct ieee80211_vif* vif; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;


 int B43_WARN_ON (int) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;

__attribute__((used)) static void b43_op_sta_notify(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         enum sta_notify_cmd notify_cmd,
         struct ieee80211_sta *sta)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);

 B43_WARN_ON(!vif || wl->vif != vif);
}
