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
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_sched_scan_request {int n_ssids; int n_channels; int n_match_sets; int n_scan_plans; int /*<<< orphan*/  ie; int /*<<< orphan*/  ie_len; struct cfg80211_sched_scan_plan* scan_plans; struct cfg80211_match_set* match_sets; int /*<<< orphan*/  delay; int /*<<< orphan*/  min_rssi_thold; TYPE_2__** channels; TYPE_1__* ssids; int /*<<< orphan*/  flags; } ;
struct cfg80211_sched_scan_plan {int /*<<< orphan*/  iterations; int /*<<< orphan*/  interval; } ;
struct TYPE_6__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct cfg80211_match_set {TYPE_3__ ssid; int /*<<< orphan*/  rssi_thold; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw_value; } ;
struct TYPE_4__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WMI_FRAME_PROBE_REQ ; 
 struct wil6210_vif* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct wil6210_priv* FUNC3 (struct wiphy*) ; 
 int FUNC4 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wil6210_priv*,struct cfg80211_sched_scan_request*) ; 

__attribute__((used)) static int
FUNC6(struct wiphy *wiphy,
			      struct net_device *dev,
			      struct cfg80211_sched_scan_request *request)
{
	struct wil6210_priv *wil = FUNC3(wiphy);
	struct wil6210_vif *vif = FUNC0(dev);
	int i, rc;

	if (vif->mid != 0)
		return -EOPNOTSUPP;

	FUNC1(wil,
		     "sched scan start: n_ssids %d, ie_len %zu, flags 0x%x\n",
		     request->n_ssids, request->ie_len, request->flags);
	for (i = 0; i < request->n_ssids; i++) {
		FUNC1(wil, "SSID[%d]:", i);
		FUNC2("SSID ", DUMP_PREFIX_OFFSET, 16, 1,
				  request->ssids[i].ssid,
				  request->ssids[i].ssid_len, true);
	}
	FUNC1(wil, "channels:");
	for (i = 0; i < request->n_channels; i++)
		FUNC1(wil, " %d%s", request->channels[i]->hw_value,
			     i == request->n_channels - 1 ? "\n" : "");
	FUNC1(wil, "n_match_sets %d, min_rssi_thold %d, delay %d\n",
		     request->n_match_sets, request->min_rssi_thold,
		     request->delay);
	for (i = 0; i < request->n_match_sets; i++) {
		struct cfg80211_match_set *ms = &request->match_sets[i];

		FUNC1(wil, "MATCHSET[%d]: rssi_thold %d\n",
			     i, ms->rssi_thold);
		FUNC2("SSID ", DUMP_PREFIX_OFFSET, 16, 1,
				  ms->ssid.ssid,
				  ms->ssid.ssid_len, true);
	}
	FUNC1(wil, "n_scan_plans %d\n", request->n_scan_plans);
	for (i = 0; i < request->n_scan_plans; i++) {
		struct cfg80211_sched_scan_plan *sp = &request->scan_plans[i];

		FUNC1(wil, "SCAN PLAN[%d]: interval %d iterations %d\n",
			     i, sp->interval, sp->iterations);
	}

	rc = FUNC4(vif, WMI_FRAME_PROBE_REQ,
			request->ie_len, request->ie);
	if (rc)
		return rc;
	return FUNC5(wil, request);
}