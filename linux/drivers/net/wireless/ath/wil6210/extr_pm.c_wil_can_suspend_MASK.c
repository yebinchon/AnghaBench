#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wil6210_vif {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rejected_by_host; } ;
struct TYPE_3__ {int /*<<< orphan*/  suspend; } ;
struct wil6210_priv {scalar_t__ recovery_state; TYPE_2__ suspend_stats; int /*<<< orphan*/  vif_mutex; struct wil6210_vif** vifs; int /*<<< orphan*/  status; TYPE_1__ platform_ops; int /*<<< orphan*/  fw_capabilities; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_WMI_ONLY ; 
 scalar_t__ debug_fw ; 
 scalar_t__ fw_recovery_idle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,struct wil6210_vif*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,...) ; 
 int FUNC6 (struct wil6210_priv*,int,int) ; 
 int /*<<< orphan*/  wil_status_resetting ; 

int FUNC7(struct wil6210_priv *wil, bool is_runtime)
{
	int rc = 0, i;
	bool wmi_only = FUNC3(WMI_FW_CAPABILITY_WMI_ONLY,
				 wil->fw_capabilities);
	bool active_ifaces;

	FUNC5(wil, "can_suspend: %s\n", is_runtime ? "runtime" : "system");

	if (wmi_only || debug_fw) {
		FUNC5(wil, "Deny any suspend - %s mode\n",
			   wmi_only ? "wmi_only" : "debug_fw");
		rc = -EBUSY;
		goto out;
	}
	if (is_runtime && !wil->platform_ops.suspend) {
		rc = -EBUSY;
		goto out;
	}

	FUNC1(&wil->vif_mutex);
	active_ifaces = FUNC6(wil, true, false);
	FUNC2(&wil->vif_mutex);

	if (!active_ifaces) {
		/* can always sleep when down */
		FUNC5(wil, "Interface is down\n");
		goto out;
	}
	if (FUNC3(wil_status_resetting, wil->status)) {
		FUNC5(wil, "Delay suspend when resetting\n");
		rc = -EBUSY;
		goto out;
	}
	if (wil->recovery_state != fw_recovery_idle) {
		FUNC5(wil, "Delay suspend during recovery\n");
		rc = -EBUSY;
		goto out;
	}

	/* interface is running */
	FUNC1(&wil->vif_mutex);
	for (i = 0; i < FUNC0(wil); i++) {
		struct wil6210_vif *vif = wil->vifs[i];

		if (!vif)
			continue;
		if (!FUNC4(wil, vif, is_runtime)) {
			rc = -EBUSY;
			FUNC2(&wil->vif_mutex);
			goto out;
		}
	}
	FUNC2(&wil->vif_mutex);

out:
	FUNC5(wil, "can_suspend: %s => %s (%d)\n",
		   is_runtime ? "runtime" : "system", rc ? "No" : "Yes", rc);

	if (rc)
		wil->suspend_stats.rejected_by_host++;

	return rc;
}