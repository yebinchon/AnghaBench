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
struct wiphy {int /*<<< orphan*/  fw_version; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_ndev; int /*<<< orphan*/  napi_rx; scalar_t__ use_enhanced_dma_hw; int /*<<< orphan*/  fw_version; struct net_device* main_ndev; struct wiphy* wiphy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIL6210_NAPI_BUDGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wil6210_netdev_poll_rx ; 
 int /*<<< orphan*/  wil6210_netdev_poll_rx_edma ; 
 int /*<<< orphan*/  wil6210_netdev_poll_tx ; 
 int /*<<< orphan*/  wil6210_netdev_poll_tx_edma ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,struct wil6210_vif*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct wil6210_priv*,struct wil6210_vif*) ; 
 int FUNC11 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC12 (struct wiphy*) ; 

int FUNC13(struct wil6210_priv *wil)
{
	struct wiphy *wiphy = wil->wiphy;
	struct net_device *ndev = wil->main_ndev;
	struct wil6210_vif *vif = FUNC1(ndev);
	int rc;

	FUNC7(wil, "entered");

	FUNC6(wiphy->fw_version, wil->fw_version, sizeof(wiphy->fw_version));

	rc = FUNC11(wiphy);
	if (rc < 0) {
		FUNC8(wil, "failed to register wiphy, err %d\n", rc);
		return rc;
	}

	FUNC0(&wil->napi_ndev);
	if (wil->use_enhanced_dma_hw) {
		FUNC2(&wil->napi_ndev, &wil->napi_rx,
			       wil6210_netdev_poll_rx_edma,
			       WIL6210_NAPI_BUDGET);
		FUNC3(&wil->napi_ndev,
				  &wil->napi_tx, wil6210_netdev_poll_tx_edma,
				  WIL6210_NAPI_BUDGET);
	} else {
		FUNC2(&wil->napi_ndev, &wil->napi_rx,
			       wil6210_netdev_poll_rx,
			       WIL6210_NAPI_BUDGET);
		FUNC3(&wil->napi_ndev,
				  &wil->napi_tx, wil6210_netdev_poll_tx,
				  WIL6210_NAPI_BUDGET);
	}

	FUNC9(wil, vif, NULL, true);

	FUNC4();
	rc = FUNC10(wil, vif);
	FUNC5();
	if (rc < 0)
		goto out_wiphy;

	return 0;

out_wiphy:
	FUNC12(wiphy);
	return rc;
}