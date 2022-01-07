
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum iwl_mvm_traffic_load { ____Placeholder_iwl_mvm_traffic_load } iwl_mvm_traffic_load ;
typedef enum iwl_mvm_scan_type { ____Placeholder_iwl_mvm_scan_type } iwl_mvm_scan_type ;


 int _iwl_mvm_get_scan_type (struct iwl_mvm*,struct ieee80211_vif*,int,int) ;
 int iwl_mvm_get_traffic_load (struct iwl_mvm*) ;
 int iwl_mvm_low_latency (struct iwl_mvm*) ;

__attribute__((used)) static enum
iwl_mvm_scan_type iwl_mvm_get_scan_type(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif)
{
 enum iwl_mvm_traffic_load load;
 bool low_latency;

 load = iwl_mvm_get_traffic_load(mvm);
 low_latency = iwl_mvm_low_latency(mvm);

 return _iwl_mvm_get_scan_type(mvm, vif, load, low_latency);
}
