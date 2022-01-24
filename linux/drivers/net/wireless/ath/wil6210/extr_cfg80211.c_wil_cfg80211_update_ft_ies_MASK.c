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
struct wmi_ft_reassoc_cmd {int /*<<< orphan*/  bssid; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; struct cfg80211_bss* bss; int /*<<< orphan*/  status; } ;
struct wil6210_priv {int /*<<< orphan*/  fw_capabilities; } ;
struct net_device {int dummy; } ;
struct cfg80211_update_ft_ies_params {int /*<<< orphan*/  ie; int /*<<< orphan*/  ie_len; } ;
struct cfg80211_bss {int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  reassoc ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WMI_FT_REASSOC_CMDID ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_FT_ROAMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wmi_ft_reassoc_cmd*,int /*<<< orphan*/ ,int) ; 
 struct wil6210_vif* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wil_vif_ft_roam ; 
 struct wil6210_priv* FUNC7 (struct wiphy*) ; 
 int FUNC8 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_ft_reassoc_cmd*,int) ; 
 int FUNC9 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct wiphy *wiphy, struct net_device *dev,
			   struct cfg80211_update_ft_ies_params *ftie)
{
	struct wil6210_priv *wil = FUNC7(wiphy);
	struct wil6210_vif *vif = FUNC2(dev);
	struct cfg80211_bss *bss;
	struct wmi_ft_reassoc_cmd reassoc;
	int rc = 0;

	FUNC4(wil, "update ft ies, mid=%d\n", vif->mid);
	FUNC6("FT IE ", DUMP_PREFIX_OFFSET, 16, 1,
			  ftie->ie, ftie->ie_len, true);

	if (!FUNC3(WMI_FW_CAPABILITY_FT_ROAMING, wil->fw_capabilities)) {
		FUNC5(wil, "FW does not support FT roaming\n");
		return -EOPNOTSUPP;
	}

	rc = FUNC9(vif, ftie->ie_len, ftie->ie);
	if (rc)
		return rc;

	if (!FUNC3(wil_vif_ft_roam, vif->status))
		/* vif is not roaming */
		return 0;

	/* wil_vif_ft_roam is set. wil_cfg80211_update_ft_ies is used as
	 * a trigger for reassoc
	 */

	bss = vif->bss;
	if (!bss) {
		FUNC5(wil, "FT: bss is NULL\n");
		return -EINVAL;
	}

	FUNC1(&reassoc, 0, sizeof(reassoc));
	FUNC0(reassoc.bssid, bss->bssid);

	rc = FUNC8(wil, WMI_FT_REASSOC_CMDID, vif->mid,
		      &reassoc, sizeof(reassoc));
	if (rc)
		FUNC5(wil, "FT: reassoc failed (%d)\n", rc);

	return rc;
}