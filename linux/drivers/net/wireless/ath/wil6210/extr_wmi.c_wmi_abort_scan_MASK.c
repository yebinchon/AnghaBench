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
 int /*<<< orphan*/  WMI_ABORT_SCAN_CMDID ; 
 struct wil6210_priv* FUNC0 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int) ; 
 int FUNC3 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct wil6210_vif *vif)
{
	struct wil6210_priv *wil = FUNC0(vif);
	int rc;

	FUNC1(wil, "sending WMI_ABORT_SCAN_CMDID\n");

	rc = FUNC3(wil, WMI_ABORT_SCAN_CMDID, vif->mid, NULL, 0);
	if (rc)
		FUNC2(wil, "Failed to abort scan (%d)\n", rc);

	return rc;
}