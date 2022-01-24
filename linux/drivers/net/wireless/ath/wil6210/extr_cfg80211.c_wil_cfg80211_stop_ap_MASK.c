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
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ gtk_len; int /*<<< orphan*/  gtk; int /*<<< orphan*/  assocresp_ies_len; int /*<<< orphan*/  assocresp_ies; int /*<<< orphan*/  proberesp_ies_len; int /*<<< orphan*/  proberesp_ies; int /*<<< orphan*/  proberesp_len; int /*<<< orphan*/  proberesp; scalar_t__ ssid_len; int /*<<< orphan*/  status; int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIL_DEFAULT_BUS_REQUEST_KBPS ; 
 int /*<<< orphan*/  WMI_MAX_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_recovery_idle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_priv*,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wil_status_resetting ; 
 int /*<<< orphan*/  wil_vif_ft_roam ; 
 struct wil6210_priv* FUNC14 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC15 (struct wil6210_vif*) ; 

__attribute__((used)) static int FUNC16(struct wiphy *wiphy,
				struct net_device *ndev)
{
	struct wil6210_priv *wil = FUNC14(wiphy);
	struct wil6210_vif *vif = FUNC5(ndev);
	bool last;

	FUNC10(wil, "stop_ap, mid=%d\n", vif->mid);

	FUNC6(ndev);
	last = !FUNC11(wil, ndev, false, true);
	if (last) {
		FUNC8(wil, WIL_DEFAULT_BUS_REQUEST_KBPS);
		FUNC13(wil, fw_recovery_idle);
		FUNC7(wil_status_resetting, wil->status);
	}

	FUNC3(&wil->mutex);

	FUNC15(vif);
	FUNC1(wil_vif_ft_roam, vif->status);
	vif->ssid_len = 0;
	FUNC12(&vif->proberesp, &vif->proberesp_len, NULL, 0);
	FUNC12(&vif->proberesp_ies, &vif->proberesp_ies_len, NULL, 0);
	FUNC12(&vif->assocresp_ies, &vif->assocresp_ies_len, NULL, 0);
	FUNC2(vif->gtk, 0, WMI_MAX_KEY_LEN);
	vif->gtk_len = 0;

	if (last)
		FUNC0(wil);
	else
		FUNC9(vif);

	FUNC4(&wil->mutex);

	return 0;
}