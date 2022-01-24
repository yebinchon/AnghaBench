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
struct wireless_dev {int /*<<< orphan*/  iftype; } ;
struct wil6210_vif {size_t mid; } ;
struct wil6210_priv {struct wil6210_vif** vifs; } ;
struct net_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct wil6210_vif*) ; 
 struct wireless_dev* FUNC4 (struct wil6210_vif*) ; 
 int FUNC5 (struct wil6210_priv*,int,int) ; 
 int FUNC6 (struct wil6210_priv*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,scalar_t__) ; 

int FUNC8(struct wil6210_priv *wil, struct wil6210_vif *vif)
{
	struct net_device *ndev = FUNC3(vif);
	struct wireless_dev *wdev = FUNC4(vif);
	bool any_active = FUNC5(wil, true, false);
	int rc;

	FUNC0();

	if (wil->vifs[vif->mid]) {
		FUNC1(&ndev->dev, "VIF with mid %d already in use\n",
			vif->mid);
		return -EEXIST;
	}
	if (any_active && vif->mid != 0) {
		rc = FUNC6(wil, vif->mid, ndev->dev_addr,
				       wdev->iftype);
		if (rc)
			return rc;
	}
	rc = FUNC2(ndev);
	if (rc < 0) {
		FUNC1(&ndev->dev, "Failed to register netdev: %d\n", rc);
		if (any_active && vif->mid != 0)
			FUNC7(wil, vif->mid);
		return rc;
	}

	wil->vifs[vif->mid] = vif;
	return 0;
}