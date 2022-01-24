#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
typedef  enum iwl_mvm_traffic_load { ____Placeholder_iwl_mvm_traffic_load } iwl_mvm_traffic_load ;
typedef  enum iwl_mvm_scan_type { ____Placeholder_iwl_mvm_scan_type } iwl_mvm_scan_type ;

/* Variables and functions */
 int FUNC0 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 int FUNC1 (struct iwl_mvm*) ; 
 int FUNC2 (struct iwl_mvm*) ; 

__attribute__((used)) static enum
iwl_mvm_scan_type FUNC3(struct iwl_mvm *mvm,
					struct ieee80211_vif *vif)
{
	enum iwl_mvm_traffic_load load;
	bool low_latency;

	load = FUNC1(mvm);
	low_latency = FUNC2(mvm);

	return FUNC0(mvm, vif, load, low_latency);
}