#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct brcmf_if {TYPE_2__* vif; TYPE_1__* drvr; } ;
struct brcmf_cfg80211_info {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_5__ {int /*<<< orphan*/  sme_state; } ;
struct TYPE_4__ {struct brcmf_cfg80211_info* config; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_VIF_STATUS_READY ; 
 int /*<<< orphan*/  WLAN_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC5(struct brcmf_if *ifp)
{
	struct brcmf_cfg80211_info *cfg = ifp->drvr->config;

	/*
	 * While going down, if associated with AP disassociate
	 * from AP to save power
	 */
	if (FUNC3(ifp->vif)) {
		FUNC2(ifp->vif, WLAN_REASON_UNSPECIFIED);

		/* Make sure WPA_Supplicant receives all the event
		   generated due to DISASSOC call to the fw to keep
		   the state fw and WPA_Supplicant state consistent
		 */
		FUNC1(500);
	}

	FUNC0(cfg);
	FUNC4(BRCMF_VIF_STATUS_READY, &ifp->vif->sme_state);

	return 0;
}