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
typedef  size_t u8 ;
struct wil6210_vif {scalar_t__ mid; int /*<<< orphan*/  enable_tx_key_worker; int /*<<< orphan*/  probe_client_worker; int /*<<< orphan*/  disconnect_worker; int /*<<< orphan*/  connect_timer; } ;
struct wil6210_priv {int /*<<< orphan*/  wmi_event_worker; int /*<<< orphan*/  vif_mutex; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; int /*<<< orphan*/  status; struct wil6210_vif** vifs; int /*<<< orphan*/  mutex; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct net_device* FUNC10 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_vif*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wil6210_priv*,char*,size_t) ; 
 int FUNC13 (struct wil6210_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  wil_status_napi_en ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct wil6210_priv*,scalar_t__) ; 

void FUNC17(struct wil6210_priv *wil, u8 mid)
{
	struct wil6210_vif *vif;
	struct net_device *ndev;
	bool any_active = FUNC13(wil, true, false);

	FUNC0();
	if (mid >= FUNC1(wil)) {
		FUNC12(wil, "invalid MID: %d\n", mid);
		return;
	}

	vif = wil->vifs[mid];
	if (!vif) {
		FUNC12(wil, "MID %d not registered\n", mid);
		return;
	}

	FUNC5(&wil->mutex);
	FUNC11(vif, NULL, WLAN_REASON_DEAUTH_LEAVING);
	FUNC6(&wil->mutex);

	ndev = FUNC10(vif);
	/* during unregister_netdevice cfg80211_leave may perform operations
	 * such as stop AP, disconnect, so we only clear the VIF afterwards
	 */
	FUNC9(ndev);

	if (any_active && vif->mid != 0)
		FUNC16(wil, vif->mid);

	/* make sure no one is accessing the VIF before removing */
	FUNC5(&wil->vif_mutex);
	wil->vifs[mid] = NULL;
	/* ensure NAPI code will see the NULL VIF */
	FUNC15();
	if (FUNC8(wil_status_napi_en, wil->status)) {
		FUNC7(&wil->napi_rx);
		FUNC7(&wil->napi_tx);
	}
	FUNC6(&wil->vif_mutex);

	FUNC4(&wil->wmi_event_worker);
	FUNC3(&vif->connect_timer);
	FUNC2(&vif->disconnect_worker);
	FUNC14(vif);
	FUNC2(&vif->probe_client_worker);
	FUNC2(&vif->enable_tx_key_worker);
	/* for VIFs, ndev will be freed by destructor after RTNL is unlocked.
	 * the main interface will be freed in wil_if_free, we need to keep it
	 * a bit longer so logging macros will work.
	 */
}