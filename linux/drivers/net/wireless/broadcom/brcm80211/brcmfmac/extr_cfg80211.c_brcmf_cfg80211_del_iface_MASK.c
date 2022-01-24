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
struct wireless_dev {int iftype; struct net_device* netdev; } ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifp; } ;
struct brcmf_cfg80211_info {TYPE_1__ escan_info; int /*<<< orphan*/  scan_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_SCAN_STATUS_BUSY ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
#define  NL80211_IFTYPE_ADHOC 138 
#define  NL80211_IFTYPE_AP 137 
#define  NL80211_IFTYPE_AP_VLAN 136 
#define  NL80211_IFTYPE_MESH_POINT 135 
#define  NL80211_IFTYPE_MONITOR 134 
#define  NL80211_IFTYPE_P2P_CLIENT 133 
#define  NL80211_IFTYPE_P2P_DEVICE 132 
#define  NL80211_IFTYPE_P2P_GO 131 
#define  NL80211_IFTYPE_STATION 130 
#define  NL80211_IFTYPE_UNSPECIFIED 129 
#define  NL80211_IFTYPE_WDS 128 
 int FUNC0 (struct wiphy*,struct wireless_dev*) ; 
 scalar_t__ FUNC1 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_cfg80211_info*,scalar_t__,int,int) ; 
 int FUNC4 (struct wiphy*,struct wireless_dev*) ; 
 struct net_device* FUNC5 (struct brcmf_cfg80211_info*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct brcmf_cfg80211_info* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static
int FUNC9(struct wiphy *wiphy, struct wireless_dev *wdev)
{
	struct brcmf_cfg80211_info *cfg = FUNC8(wiphy);
	struct net_device *ndev = wdev->netdev;

	if (ndev && ndev == FUNC5(cfg))
		return -ENOTSUPP;

	/* vif event pending in firmware */
	if (FUNC1(cfg))
		return -EBUSY;

	if (ndev) {
		if (FUNC7(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status) &&
		    cfg->escan_info.ifp == FUNC6(ndev))
			FUNC3(cfg, FUNC6(ndev),
						    true, true);

		FUNC2(FUNC6(ndev), "mpc", 1);
	}

	switch (wdev->iftype) {
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_WDS:
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_MESH_POINT:
		return -EOPNOTSUPP;
	case NL80211_IFTYPE_AP:
		return FUNC0(wiphy, wdev);
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_P2P_GO:
	case NL80211_IFTYPE_P2P_DEVICE:
		return FUNC4(wiphy, wdev);
	case NL80211_IFTYPE_UNSPECIFIED:
	default:
		return -EINVAL;
	}
	return -EOPNOTSUPP;
}