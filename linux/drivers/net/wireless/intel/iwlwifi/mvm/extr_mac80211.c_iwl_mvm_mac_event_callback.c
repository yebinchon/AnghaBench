
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int tid; int sta; } ;
struct TYPE_4__ {TYPE_1__ ba; } ;
struct ieee80211_event {int type; TYPE_2__ u; } ;




 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;

 int iwl_mvm_event_bar_rx_callback (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_event const*) ;
 int iwl_mvm_event_frame_timeout_callback (struct iwl_mvm*,struct ieee80211_vif*,int ,int ) ;
 int iwl_mvm_event_mlme_callback (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_event const*) ;

__attribute__((used)) static void iwl_mvm_mac_event_callback(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           const struct ieee80211_event *event)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 switch (event->type) {
 case 128:
  iwl_mvm_event_mlme_callback(mvm, vif, event);
  break;
 case 130:
  iwl_mvm_event_bar_rx_callback(mvm, vif, event);
  break;
 case 129:
  iwl_mvm_event_frame_timeout_callback(mvm, vif, event->u.ba.sta,
           event->u.ba.tid);
  break;
 default:
  break;
 }
}
