#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm_vif {size_t id; int /*<<< orphan*/  uapsd_nonagg_detected_wk; TYPE_2__* queue_params; } ;
struct TYPE_10__ {TYPE_4__* data; } ;
struct iwl_mvm {TYPE_5__ tcm; } ;
struct TYPE_6__ {int /*<<< orphan*/  assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct TYPE_8__ {int detected; } ;
struct TYPE_9__ {TYPE_3__ uapsd_nonagg_detect; } ;
struct TYPE_7__ {int /*<<< orphan*/  uapsd; } ;

/* Variables and functions */
 int HZ ; 
 size_t IEEE80211_AC_BE ; 
 size_t IEEE80211_AC_BK ; 
 size_t IEEE80211_AC_VI ; 
 size_t IEEE80211_AC_VO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 struct iwl_mvm_vif* FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm,
					 struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC1(vif);

	if (vif->type != NL80211_IFTYPE_STATION)
		return;

	if (!vif->bss_conf.assoc)
		return;

	if (!mvmvif->queue_params[IEEE80211_AC_VO].uapsd &&
	    !mvmvif->queue_params[IEEE80211_AC_VI].uapsd &&
	    !mvmvif->queue_params[IEEE80211_AC_BE].uapsd &&
	    !mvmvif->queue_params[IEEE80211_AC_BK].uapsd)
		return;

	if (mvm->tcm.data[mvmvif->id].uapsd_nonagg_detect.detected)
		return;

	mvm->tcm.data[mvmvif->id].uapsd_nonagg_detect.detected = true;
	FUNC0(mvm,
		 "detected AP should do aggregation but isn't, likely due to U-APSD\n");
	FUNC2(&mvmvif->uapsd_nonagg_detected_wk, 15 * HZ);
}