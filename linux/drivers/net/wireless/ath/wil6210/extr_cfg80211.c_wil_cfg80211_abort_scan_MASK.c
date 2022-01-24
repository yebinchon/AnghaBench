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
struct wireless_dev {int /*<<< orphan*/  iftype; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {TYPE_1__* scan_request; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif_mutex; struct wireless_dev* p2p_wdev; struct wireless_dev* radio_wdev; } ;
struct TYPE_2__ {struct wireless_dev* wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC2 (struct wil6210_priv*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_vif*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*) ; 
 struct wil6210_priv* FUNC6 (struct wiphy*) ; 

__attribute__((used)) static void FUNC7(struct wiphy *wiphy,
				    struct wireless_dev *wdev)
{
	struct wil6210_priv *wil = FUNC6(wiphy);
	struct wil6210_vif *vif = FUNC2(wil, wdev);

	FUNC4(wil, "wdev=0x%p iftype=%d\n", wdev, wdev->iftype);

	FUNC0(&wil->mutex);
	FUNC0(&wil->vif_mutex);

	if (!vif->scan_request)
		goto out;

	if (wdev != vif->scan_request->wdev) {
		FUNC4(wil, "abort scan was called on the wrong iface\n");
		goto out;
	}

	if (wdev == wil->p2p_wdev && wil->radio_wdev == wil->p2p_wdev)
		FUNC5(wil);
	else
		FUNC3(vif, true);

out:
	FUNC1(&wil->vif_mutex);
	FUNC1(&wil->mutex);
}