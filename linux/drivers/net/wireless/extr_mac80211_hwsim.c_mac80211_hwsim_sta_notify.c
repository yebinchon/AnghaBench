
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;




 int WARN (int,char*,int) ;
 int hwsim_check_magic (struct ieee80211_vif*) ;

__attribute__((used)) static void mac80211_hwsim_sta_notify(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          enum sta_notify_cmd cmd,
          struct ieee80211_sta *sta)
{
 hwsim_check_magic(vif);

 switch (cmd) {
 case 128:
 case 129:

  break;
 default:
  WARN(1, "Invalid sta notify: %d\n", cmd);
  break;
 }
}
