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
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct wil6210_priv {int /*<<< orphan*/  napi_rx; int /*<<< orphan*/  napi_tx; struct net_device* main_ndev; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct wil6210_priv *wil)
{
	struct net_device *ndev = wil->main_ndev;
	struct wireless_dev *wdev = ndev->ieee80211_ptr;

	FUNC3(wil, "if_remove\n");

	FUNC1();
	FUNC4(wil, 0);
	FUNC2();

	FUNC0(&wil->napi_tx);
	FUNC0(&wil->napi_rx);

	FUNC5(wdev->wiphy);
}