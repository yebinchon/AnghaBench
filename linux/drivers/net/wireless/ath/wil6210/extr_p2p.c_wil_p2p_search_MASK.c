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
struct wil_p2p_info {int discovery_started; int /*<<< orphan*/  discovery_timer; int /*<<< orphan*/  discovery_expired_work; } ;
struct wil6210_vif {struct wil_p2p_info p2p; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; } ;
struct cfg80211_scan_request {int /*<<< orphan*/  ie; int /*<<< orphan*/  ie_len; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P2P_DEFAULT_BI ; 
 int /*<<< orphan*/  P2P_DMG_SOCIAL_CHANNEL ; 
 int /*<<< orphan*/  P2P_SEARCH_DURATION_MS ; 
 int /*<<< orphan*/  P2P_WILDCARD_SSID ; 
 int /*<<< orphan*/  WMI_FRAME_PROBE_REQ ; 
 int /*<<< orphan*/  WMI_FRAME_PROBE_RESP ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC5 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  wil_p2p_search_expired ; 
 int FUNC8 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC12 (struct wil6210_vif*) ; 

int FUNC13(struct wil6210_vif *vif,
		   struct cfg80211_scan_request *request)
{
	struct wil6210_priv *wil = FUNC5(vif);
	int rc;
	struct wil_p2p_info *p2p = &vif->p2p;

	FUNC6(wil, "p2p_search: channel %d\n", P2P_DMG_SOCIAL_CHANNEL);

	FUNC1(&wil->mutex);

	if (p2p->discovery_started) {
		FUNC7(wil, "search failed. discovery already ongoing\n");
		rc = -EBUSY;
		goto out;
	}

	rc = FUNC8(vif, P2P_DMG_SOCIAL_CHANNEL, P2P_DEFAULT_BI);
	if (rc) {
		FUNC7(wil, "wmi_p2p_cfg failed\n");
		goto out;
	}

	rc = FUNC10(vif, FUNC4(P2P_WILDCARD_SSID), P2P_WILDCARD_SSID);
	if (rc) {
		FUNC7(wil, "wmi_set_ssid failed\n");
		goto out_stop;
	}

	/* Set application IE to probe request and probe response */
	rc = FUNC9(vif, WMI_FRAME_PROBE_REQ,
			request->ie_len, request->ie);
	if (rc) {
		FUNC7(wil, "wmi_set_ie(WMI_FRAME_PROBE_REQ) failed\n");
		goto out_stop;
	}

	/* supplicant doesn't provide Probe Response IEs. As a workaround -
	 * re-use Probe Request IEs
	 */
	rc = FUNC9(vif, WMI_FRAME_PROBE_RESP,
			request->ie_len, request->ie);
	if (rc) {
		FUNC7(wil, "wmi_set_ie(WMI_FRAME_PROBE_RESP) failed\n");
		goto out_stop;
	}

	rc = FUNC11(vif);
	if (rc) {
		FUNC7(wil, "wmi_start_search failed\n");
		goto out_stop;
	}

	p2p->discovery_started = 1;
	FUNC0(&p2p->discovery_expired_work, wil_p2p_search_expired);
	FUNC2(&p2p->discovery_timer,
		  jiffies + FUNC3(P2P_SEARCH_DURATION_MS));

out_stop:
	if (rc)
		FUNC12(vif);

out:
	return rc;
}