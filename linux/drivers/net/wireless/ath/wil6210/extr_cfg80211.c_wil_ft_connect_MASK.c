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
struct wmi_ft_auth_cmd {int /*<<< orphan*/  bssid; scalar_t__ channel; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int /*<<< orphan*/  status; int /*<<< orphan*/  connect_timer; int /*<<< orphan*/  mid; int /*<<< orphan*/  privacy; } ;
struct wil6210_priv {int /*<<< orphan*/  fw_capabilities; } ;
struct net_device {int dummy; } ;
struct cfg80211_connect_params {int /*<<< orphan*/  bssid; TYPE_1__* channel; scalar_t__ pbss; int /*<<< orphan*/  privacy; int /*<<< orphan*/  prev_bssid; } ;
typedef  int /*<<< orphan*/  auth_cmd ;
struct TYPE_2__ {scalar_t__ hw_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WMI_FT_AUTH_CMDID ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_FT_ROAMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct wmi_ft_auth_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 struct wil6210_vif* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  wil_vif_ft_roam ; 
 int /*<<< orphan*/  wil_vif_fwconnected ; 
 struct wil6210_priv* FUNC11 (struct wiphy*) ; 
 int FUNC12 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_ft_auth_cmd*,int) ; 

__attribute__((used)) static int FUNC13(struct wiphy *wiphy,
			  struct net_device *ndev,
			  struct cfg80211_connect_params *sme)
{
	struct wil6210_priv *wil = FUNC11(wiphy);
	struct wil6210_vif *vif = FUNC6(ndev);
	struct wmi_ft_auth_cmd auth_cmd;
	int rc;

	if (!FUNC8(WMI_FW_CAPABILITY_FT_ROAMING, wil->fw_capabilities)) {
		FUNC9(wil, "FT: FW does not support FT roaming\n");
		return -EOPNOTSUPP;
	}

	if (!sme->prev_bssid) {
		FUNC9(wil, "FT: prev_bssid was not set\n");
		return -EINVAL;
	}

	if (FUNC2(sme->prev_bssid, sme->bssid)) {
		FUNC9(wil, "FT: can not roam to same AP\n");
		return -EINVAL;
	}

	if (!FUNC8(wil_vif_fwconnected, vif->status)) {
		FUNC9(wil, "FT: roam while not connected\n");
		return -EINVAL;
	}

	if (vif->privacy != sme->privacy) {
		FUNC9(wil, "FT: privacy mismatch, current (%d) roam (%d)\n",
			vif->privacy, sme->privacy);
		return -EINVAL;
	}

	if (sme->pbss) {
		FUNC9(wil, "FT: roam is not valid for PBSS\n");
		return -EINVAL;
	}

	FUNC3(&auth_cmd, 0, sizeof(auth_cmd));
	auth_cmd.channel = sme->channel->hw_value - 1;
	FUNC1(auth_cmd.bssid, sme->bssid);

	FUNC10(wil, "FT: roaming\n");

	FUNC7(wil_vif_ft_roam, vif->status);
	rc = FUNC12(wil, WMI_FT_AUTH_CMDID, vif->mid,
		      &auth_cmd, sizeof(auth_cmd));
	if (rc == 0)
		FUNC4(&vif->connect_timer,
			  jiffies + FUNC5(5000));
	else
		FUNC0(wil_vif_ft_roam, vif->status);

	return rc;
}