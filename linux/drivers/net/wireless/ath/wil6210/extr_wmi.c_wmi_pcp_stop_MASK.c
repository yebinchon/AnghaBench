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
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIL_WMI_PCP_STOP_TO_MS ; 
 int /*<<< orphan*/  WMI_PCP_STOPPED_EVENTID ; 
 int /*<<< orphan*/  WMI_PCP_STOP_CMDID ; 
 struct wil6210_priv* FUNC0 (struct wil6210_vif*) ; 
 int FUNC1 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wil6210_priv*,int) ; 

int FUNC3(struct wil6210_vif *vif)
{
	struct wil6210_priv *wil = FUNC0(vif);
	int rc;

	rc = FUNC2(wil, false);
	if (rc)
		return rc;

	return FUNC1(wil, WMI_PCP_STOP_CMDID, vif->mid, NULL, 0,
			WMI_PCP_STOPPED_EVENTID, NULL, 0,
			WIL_WMI_PCP_STOP_TO_MS);
}