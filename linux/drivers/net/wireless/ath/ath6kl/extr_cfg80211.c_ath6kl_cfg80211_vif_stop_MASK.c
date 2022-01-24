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
typedef  int u8 ;
struct cfg80211_scan_info {int aborted; } ;
struct ath6kl_vif {int nw_type; int* bssid; int /*<<< orphan*/ * scan_req; int /*<<< orphan*/  disconnect_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int AP_NETWORK ; 
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  CONNECT_PEND ; 
 int /*<<< orphan*/  DISCONNECT_CMD ; 
 int /*<<< orphan*/  WLAN_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_vif*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct ath6kl_vif *vif, bool wmi_ready)
{
	static u8 bcast_mac[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
	bool discon_issued;

	FUNC6(vif->ndev);

	FUNC4(WLAN_ENABLED, &vif->flags);

	if (wmi_ready) {
		discon_issued = FUNC7(CONNECTED, &vif->flags) ||
				FUNC7(CONNECT_PEND, &vif->flags);
		FUNC1(vif);
		FUNC5(&vif->disconnect_timer);

		if (discon_issued)
			FUNC2(vif, DISCONNECT_CMD,
						(vif->nw_type & AP_NETWORK) ?
						bcast_mac : vif->bssid,
						0, NULL, 0);
	}

	if (vif->scan_req) {
		struct cfg80211_scan_info info = {
			.aborted = true,
		};

		FUNC3(vif->scan_req, &info);
		vif->scan_req = NULL;
	}

	/* need to clean up enhanced bmiss detection fw state */
	FUNC0(vif, false);
}