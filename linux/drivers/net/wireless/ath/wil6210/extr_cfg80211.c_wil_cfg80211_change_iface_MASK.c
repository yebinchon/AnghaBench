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
struct wireless_dev {int iftype; } ;
struct wiphy {scalar_t__ n_iface_combinations; } ;
struct wil6210_vif {scalar_t__ mid; } ;
struct wil6210_priv {int /*<<< orphan*/  monitor_flags; int /*<<< orphan*/  mutex; } ;
struct vif_params {int /*<<< orphan*/  flags; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  NL80211_IFTYPE_AP 132 
#define  NL80211_IFTYPE_MONITOR 131 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*) ; 
 int FUNC1 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct wireless_dev* FUNC6 (struct wil6210_vif*) ; 
 int FUNC7 (struct wil6210_priv*,struct wil6210_vif*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,int) ; 
 scalar_t__ FUNC10 (struct wil6210_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_priv*,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC15 (struct wiphy*) ; 
 int FUNC16 (struct wil6210_priv*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct wil6210_priv*,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct wiphy *wiphy,
				     struct net_device *ndev,
				     enum nl80211_iftype type,
				     struct vif_params *params)
{
	struct wil6210_priv *wil = FUNC15(wiphy);
	struct wil6210_vif *vif = FUNC4(ndev);
	struct wireless_dev *wdev = FUNC6(vif);
	int rc;
	bool fw_reset = false;

	FUNC8(wil, "change_iface: type=%d\n", type);

	if (wiphy->n_iface_combinations) {
		rc = FUNC7(wil, vif, type);
		if (rc) {
			FUNC9(wil, "iface validation failed, err=%d\n", rc);
			return rc;
		}
	}

	/* do not reset FW when there are active VIFs,
	 * because it can cause significant disruption
	 */
	if (!FUNC11(wil, ndev, true, false) &&
	    FUNC5(ndev) && !FUNC12(wil) &&
	    !FUNC13(wdev->iftype, type)) {
		FUNC8(wil, "interface is up. resetting...\n");
		FUNC2(&wil->mutex);
		FUNC0(wil);
		rc = FUNC1(wil);
		FUNC3(&wil->mutex);

		if (rc)
			return rc;
		fw_reset = true;
	}

	switch (type) {
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_P2P_GO:
		break;
	case NL80211_IFTYPE_MONITOR:
		if (params->flags)
			wil->monitor_flags = params->flags;
		break;
	default:
		return -EOPNOTSUPP;
	}

	if (vif->mid != 0 && FUNC10(wil, true, false)) {
		if (!fw_reset)
			FUNC14(vif);
		rc = FUNC17(wil, vif->mid);
		if (rc)
			return rc;
		rc = FUNC16(wil, vif->mid, ndev->dev_addr, type);
		if (rc)
			return rc;
	}

	wdev->iftype = type;
	return 0;
}