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
struct net_device {int dummy; } ;
struct cfg80211_connect_resp_params {int /*<<< orphan*/  resp_ie_len; int /*<<< orphan*/  resp_ie; int /*<<< orphan*/  req_ie_len; int /*<<< orphan*/  req_ie; int /*<<< orphan*/  bssid; int /*<<< orphan*/  status; } ;
struct brcmf_if {TYPE_1__* vif; } ;
struct brcmf_event_msg {int dummy; } ;
struct brcmf_cfg80211_profile {int /*<<< orphan*/  bssid; } ;
struct brcmf_cfg80211_info {int dummy; } ;
struct brcmf_cfg80211_connect_info {int /*<<< orphan*/  resp_ie_len; int /*<<< orphan*/  resp_ie; int /*<<< orphan*/  req_ie_len; int /*<<< orphan*/  req_ie; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  conn_params ;
struct TYPE_2__ {int /*<<< orphan*/  sme_state; struct brcmf_cfg80211_profile profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTED ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTING ; 
 int /*<<< orphan*/  CONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WLAN_STATUS_AUTH_TIMEOUT ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_info*,struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_cfg80211_info*,struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct cfg80211_connect_resp_params*,int /*<<< orphan*/ ) ; 
 struct brcmf_cfg80211_connect_info* FUNC4 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_connect_resp_params*,int /*<<< orphan*/ ,int) ; 
 struct brcmf_if* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32
FUNC9(struct brcmf_cfg80211_info *cfg,
		       struct net_device *ndev, const struct brcmf_event_msg *e,
		       bool completed)
{
	struct brcmf_if *ifp = FUNC6(ndev);
	struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
	struct brcmf_cfg80211_connect_info *conn_info = FUNC4(cfg);
	struct cfg80211_connect_resp_params conn_params;

	FUNC0(TRACE, "Enter\n");

	if (FUNC8(BRCMF_VIF_STATUS_CONNECTING,
			       &ifp->vif->sme_state)) {
		FUNC5(&conn_params, 0, sizeof(conn_params));
		if (completed) {
			FUNC1(cfg, ifp);
			FUNC2(cfg, ifp);
			FUNC7(BRCMF_VIF_STATUS_CONNECTED,
				&ifp->vif->sme_state);
			conn_params.status = WLAN_STATUS_SUCCESS;
		} else {
			conn_params.status = WLAN_STATUS_AUTH_TIMEOUT;
		}
		conn_params.bssid = profile->bssid;
		conn_params.req_ie = conn_info->req_ie;
		conn_params.req_ie_len = conn_info->req_ie_len;
		conn_params.resp_ie = conn_info->resp_ie;
		conn_params.resp_ie_len = conn_info->resp_ie_len;
		FUNC3(ndev, &conn_params, GFP_KERNEL);
		FUNC0(CONN, "Report connect result - connection %s\n",
			  completed ? "succeeded" : "failed");
	}
	FUNC0(TRACE, "Exit\n");
	return 0;
}