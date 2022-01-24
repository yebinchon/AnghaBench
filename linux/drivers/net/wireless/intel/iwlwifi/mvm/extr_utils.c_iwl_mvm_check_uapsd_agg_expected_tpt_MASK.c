#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_6__ {TYPE_2__* data; } ;
struct iwl_mvm {int /*<<< orphan*/ * vif_id_to_mac; TYPE_3__ tcm; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {int rx_bytes; scalar_t__ detected; int /*<<< orphan*/  rate; } ;
struct TYPE_5__ {TYPE_1__ uapsd_nonagg_detect; scalar_t__ opened_rx_ba_sessions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct ieee80211_vif* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct iwl_mvm *mvm,
						 unsigned int elapsed,
						 int mac)
{
	u64 bytes = mvm->tcm.data[mac].uapsd_nonagg_detect.rx_bytes;
	u64 tpt;
	unsigned long rate;
	struct ieee80211_vif *vif;

	rate = FUNC1(&mvm->tcm.data[mac].uapsd_nonagg_detect.rate);

	if (!rate || mvm->tcm.data[mac].opened_rx_ba_sessions ||
	    mvm->tcm.data[mac].uapsd_nonagg_detect.detected)
		return;

	if (FUNC2(mvm)) {
		tpt = 8 * bytes; /* kbps */
		FUNC0(tpt, elapsed);
		rate *= 1000; /* kbps */
		if (tpt < 22 * rate / 100)
			return;
	} else {
		/*
		 * the rate here is actually the threshold, in 100Kbps units,
		 * so do the needed conversion from bytes to 100Kbps:
		 * 100kb = bits / (100 * 1000),
		 * 100kbps = 100kb / (msecs / 1000) ==
		 *           (bits / (100 * 1000)) / (msecs / 1000) ==
		 *           bits / (100 * msecs)
		 */
		tpt = (8 * bytes);
		FUNC0(tpt, elapsed * 100);
		if (tpt < rate)
			return;
	}

	FUNC5();
	vif = FUNC4(mvm->vif_id_to_mac[mac]);
	if (vif)
		FUNC3(mvm, vif);
	FUNC6();
}