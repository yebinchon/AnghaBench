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
struct wil6210_priv {int /*<<< orphan*/  fw_capabilities; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_WMI_ONLY ; 
 scalar_t__ debug_fw ; 
 struct wil6210_priv* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,struct net_device*,int,int) ; 
 int FUNC5 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 
 int FUNC7 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct wil6210_priv *wil = FUNC0(ndev);
	int rc = 0;

	FUNC2(wil, "open\n");

	if (debug_fw ||
	    FUNC1(WMI_FW_CAPABILITY_WMI_ONLY, wil->fw_capabilities)) {
		FUNC3(wil, "while in debug_fw or wmi_only mode\n");
		return -EINVAL;
	}

	if (!FUNC4(wil, ndev, true, false)) {
		FUNC2(wil, "open, first iface\n");
		rc = FUNC5(wil);
		if (rc < 0)
			return rc;

		rc = FUNC7(wil);
		if (rc)
			FUNC6(wil);
	}

	return rc;
}