
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_sta {int sta_id; int vif; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;






 int WARN_ONCE (int,char*,int,int ) ;
 int ieee80211_vif_type_p2p (int ) ;

__attribute__((used)) static int rs_bfer_priority(struct iwl_mvm_sta *sta)
{
 int prio = -1;
 enum nl80211_iftype viftype = ieee80211_vif_type_p2p(sta->vif);

 switch (viftype) {
 case 131:
 case 129:
  prio = 3;
  break;
 case 130:
  prio = 2;
  break;
 case 128:
  prio = 1;
  break;
 default:
  WARN_ONCE(1, "viftype %d sta_id %d", viftype, sta->sta_id);
  prio = -1;
 }

 return prio;
}
