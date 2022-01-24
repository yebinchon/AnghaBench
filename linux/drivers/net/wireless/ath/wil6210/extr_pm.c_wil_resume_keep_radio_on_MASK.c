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
struct wil6210_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  bus_request_kbps_pre_suspend; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_USER_CLKS_RST_PWGD ; 
 int /*<<< orphan*/  RGF_USER_CLKS_CTL_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ no_fw_recovery ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  wil_status_resuming ; 
 int /*<<< orphan*/  wil_status_suspended ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*) ; 
 int FUNC8 (struct wil6210_priv*) ; 
 int FUNC9 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC10(struct wil6210_priv *wil)
{
	int rc = 0;

	/* wil_status_resuming will be cleared when getting
	 * WMI_TRAFFIC_RESUME_EVENTID
	 */
	FUNC1(wil_status_resuming, wil->status);
	FUNC0(wil_status_suspended, wil->status);
	FUNC3(wil, RGF_USER_CLKS_CTL_0, BIT_USER_CLKS_RST_PWGD);
	FUNC7(wil);

	FUNC2(wil, wil->bus_request_kbps_pre_suspend);

	/* Send WMI resume request to the device */
	rc = FUNC9(wil);
	if (rc) {
		FUNC5(wil, "device failed to resume (%d)\n", rc);
		if (no_fw_recovery)
			goto out;
		rc = FUNC4(wil);
		if (rc) {
			FUNC5(wil, "wil_down failed (%d)\n", rc);
			goto out;
		}
		rc = FUNC8(wil);
		if (rc) {
			FUNC5(wil, "wil_up failed (%d)\n", rc);
			goto out;
		}
	}

	/* Wake all queues */
	FUNC6(wil);

out:
	if (rc)
		FUNC1(wil_status_suspended, wil->status);
	return rc;
}