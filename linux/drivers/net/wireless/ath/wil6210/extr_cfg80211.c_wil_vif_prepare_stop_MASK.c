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
struct wireless_dev {scalar_t__ iftype; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct wil6210_vif*) ; 
 struct wireless_dev* FUNC3 (struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC4 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int) ; 
 int FUNC7 (struct wil6210_vif*) ; 

int FUNC8(struct wil6210_vif *vif)
{
	struct wil6210_priv *wil = FUNC4(vif);
	struct wireless_dev *wdev = FUNC3(vif);
	struct net_device *ndev;
	int rc;

	if (wdev->iftype != NL80211_IFTYPE_AP)
		return 0;

	ndev = FUNC2(vif);
	if (FUNC1(ndev)) {
		rc = FUNC7(vif);
		if (rc) {
			FUNC6(wil, "failed to stop AP, status %d\n",
				 rc);
			/* continue */
		}
		FUNC5(vif);
		FUNC0(ndev);
	}

	return 0;
}