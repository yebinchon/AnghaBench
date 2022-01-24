#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ status; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ use_fwsup; int /*<<< orphan*/  bssid; } ;
struct brcmf_cfg80211_vif {int /*<<< orphan*/  sme_state; TYPE_1__ profile; } ;

/* Variables and functions */
 scalar_t__ BRCMF_E_PSK_SUP ; 
 scalar_t__ BRCMF_E_SET_SSID ; 
 scalar_t__ BRCMF_E_STATUS_FWSUP_COMPLETED ; 
 scalar_t__ BRCMF_E_STATUS_SUCCESS ; 
 scalar_t__ BRCMF_PROFILE_FWSUP_PSK ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_ASSOC_SUCCESS ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_EAP_SUCCESS ; 
 int /*<<< orphan*/  CONN ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct brcmf_cfg80211_vif *vif,
			    const struct brcmf_event_msg *e)
{
	u32 event = e->event_code;
	u32 status = e->status;

	if (vif->profile.use_fwsup == BRCMF_PROFILE_FWSUP_PSK &&
	    event == BRCMF_E_PSK_SUP &&
	    status == BRCMF_E_STATUS_FWSUP_COMPLETED)
		FUNC3(BRCMF_VIF_STATUS_EAP_SUCCESS, &vif->sme_state);
	if (event == BRCMF_E_SET_SSID && status == BRCMF_E_STATUS_SUCCESS) {
		FUNC0(CONN, "Processing set ssid\n");
		FUNC2(vif->profile.bssid, e->addr, ETH_ALEN);
		if (vif->profile.use_fwsup != BRCMF_PROFILE_FWSUP_PSK)
			return true;

		FUNC3(BRCMF_VIF_STATUS_ASSOC_SUCCESS, &vif->sme_state);
	}

	if (FUNC4(BRCMF_VIF_STATUS_EAP_SUCCESS, &vif->sme_state) &&
	    FUNC4(BRCMF_VIF_STATUS_ASSOC_SUCCESS, &vif->sme_state)) {
		FUNC1(BRCMF_VIF_STATUS_EAP_SUCCESS, &vif->sme_state);
		FUNC1(BRCMF_VIF_STATUS_ASSOC_SUCCESS, &vif->sme_state);
		return true;
	}
	return false;
}