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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int locally_generated_disc; int /*<<< orphan*/  mid; int /*<<< orphan*/  status; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIL6210_DISCONNECT_TO_MS ; 
 int /*<<< orphan*/  WMI_DISCONNECT_CMDID ; 
 int /*<<< orphan*/  WMI_DISCONNECT_EVENTID ; 
 struct wil6210_vif* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  wil_vif_fwconnected ; 
 int /*<<< orphan*/  wil_vif_fwconnecting ; 
 struct wil6210_priv* FUNC4 (struct wiphy*) ; 
 int FUNC5 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy,
				   struct net_device *ndev,
				   u16 reason_code)
{
	int rc;
	struct wil6210_priv *wil = FUNC4(wiphy);
	struct wil6210_vif *vif = FUNC0(ndev);

	FUNC2(wil, "disconnect: reason=%d, mid=%d\n",
		     reason_code, vif->mid);

	if (!(FUNC1(wil_vif_fwconnecting, vif->status) ||
	      FUNC1(wil_vif_fwconnected, vif->status))) {
		FUNC3(wil, "Disconnect was called while disconnected\n");
		return 0;
	}

	vif->locally_generated_disc = true;
	rc = FUNC5(wil, WMI_DISCONNECT_CMDID, vif->mid, NULL, 0,
		      WMI_DISCONNECT_EVENTID, NULL, 0,
		      WIL6210_DISCONNECT_TO_MS);
	if (rc)
		FUNC3(wil, "disconnect error %d\n", rc);

	return rc;
}