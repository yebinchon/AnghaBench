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
typedef  int u32 ;
struct wireless_dev {int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int privacy; int /*<<< orphan*/  pbss; int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  wmi_edmg_channel; int /*<<< orphan*/  channel; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_beacon_data {int /*<<< orphan*/  tail_len; scalar_t__ tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_RSN ; 
 int FUNC0 (struct wil6210_vif*,struct cfg80211_beacon_data*) ; 
 int FUNC1 (struct wiphy*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_beacon_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wil6210_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_beacon_data*) ; 
 struct wil6210_priv* FUNC7 (struct wiphy*) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy,
				      struct net_device *ndev,
				      struct cfg80211_beacon_data *bcon)
{
	struct wil6210_priv *wil = FUNC7(wiphy);
	struct wireless_dev *wdev = ndev->ieee80211_ptr;
	struct wil6210_vif *vif = FUNC4(ndev);
	int rc;
	u32 privacy = 0;

	FUNC5(wil, "change_beacon, mid=%d\n", vif->mid);
	FUNC6(bcon);

	if (bcon->tail &&
	    FUNC2(WLAN_EID_RSN, bcon->tail,
			     bcon->tail_len))
		privacy = 1;

	FUNC3(vif->ssid, wdev->ssid, wdev->ssid_len);
	vif->ssid_len = wdev->ssid_len;

	/* in case privacy has changed, need to restart the AP */
	if (vif->privacy != privacy) {
		FUNC5(wil, "privacy changed %d=>%d. Restarting AP\n",
			     vif->privacy, privacy);

		rc = FUNC1(wiphy, ndev, vif->ssid,
					    vif->ssid_len, privacy,
					    wdev->beacon_interval,
					    vif->channel,
					    vif->wmi_edmg_channel, bcon,
					    vif->hidden_ssid,
					    vif->pbss);
	} else {
		rc = FUNC0(vif, bcon);
	}

	return rc;
}