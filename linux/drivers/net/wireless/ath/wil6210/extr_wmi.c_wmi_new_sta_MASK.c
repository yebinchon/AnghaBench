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
typedef  int /*<<< orphan*/  u8 ;
struct wmi_new_sta_cmd {int /*<<< orphan*/  dst_mac; int /*<<< orphan*/  aid; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_NEW_STA_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct wil6210_priv* FUNC1 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,int) ; 
 int FUNC4 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_new_sta_cmd*,int) ; 

int FUNC5(struct wil6210_vif *vif, const u8 *mac, u8 aid)
{
	struct wil6210_priv *wil = FUNC1(vif);
	int rc;
	struct wmi_new_sta_cmd cmd = {
		.aid = aid,
	};

	FUNC2(wil, "new sta %pM, aid %d\n", mac, aid);

	FUNC0(cmd.dst_mac, mac);

	rc = FUNC4(wil, WMI_NEW_STA_CMDID, vif->mid, &cmd, sizeof(cmd));
	if (rc)
		FUNC3(wil, "Failed to send new sta (%d)\n", rc);

	return rc;
}