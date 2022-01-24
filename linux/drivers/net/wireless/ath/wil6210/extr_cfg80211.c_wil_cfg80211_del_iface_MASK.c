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
struct wireless_dev {int /*<<< orphan*/  address; int /*<<< orphan*/  iftype; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ mid; } ;
struct wil6210_priv {struct wireless_dev* p2p_wdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NL80211_IFTYPE_P2P_DEVICE ; 
 struct wil6210_vif* FUNC0 (struct wil6210_priv*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*) ; 
 int FUNC6 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,scalar_t__) ; 
 struct wil6210_priv* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static int FUNC9(struct wiphy *wiphy,
				  struct wireless_dev *wdev)
{
	struct wil6210_priv *wil = FUNC8(wiphy);
	struct wil6210_vif *vif = FUNC0(wil, wdev);
	int rc;

	FUNC2(wil, "del_iface\n");

	if (wdev->iftype == NL80211_IFTYPE_P2P_DEVICE) {
		if (wdev != wil->p2p_wdev) {
			FUNC3(wil, "delete of incorrect interface 0x%p\n",
				wdev);
			return -EINVAL;
		}

		FUNC1(wiphy, wdev);
		FUNC5(wil);
		return 0;
	}

	if (vif->mid == 0) {
		FUNC3(wil, "cannot remove the main interface\n");
		return -EINVAL;
	}

	rc = FUNC6(vif);
	if (rc)
		goto out;

	FUNC4(wil, "deleted VIF, mid %d iftype %d MAC %pM\n",
		 vif->mid, wdev->iftype, wdev->address);

	FUNC7(wil, vif->mid);
out:
	return rc;
}