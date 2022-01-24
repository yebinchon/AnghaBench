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
typedef  int u16 ;
struct wmi_update_ft_ies_cmd {int /*<<< orphan*/  ie_info; int /*<<< orphan*/  ie_len; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WMI_UPDATE_FT_IES_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wmi_update_ft_ies_cmd*) ; 
 struct wmi_update_ft_ies_cmd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 struct wil6210_priv* FUNC4 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,int) ; 
 int FUNC6 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_update_ft_ies_cmd*,int) ; 

int FUNC7(struct wil6210_vif *vif, u16 ie_len, const void *ie)
{
	struct wil6210_priv *wil = FUNC4(vif);
	u16 len;
	struct wmi_update_ft_ies_cmd *cmd;
	int rc;

	if (!ie)
		ie_len = 0;

	len = sizeof(struct wmi_update_ft_ies_cmd) + ie_len;
	if (len < ie_len) {
		FUNC5(wil, "wraparound. ie len %d\n", ie_len);
		return -EINVAL;
	}

	cmd = FUNC2(len, GFP_KERNEL);
	if (!cmd) {
		rc = -ENOMEM;
		goto out;
	}

	cmd->ie_len = FUNC0(ie_len);
	FUNC3(cmd->ie_info, ie, ie_len);
	rc = FUNC6(wil, WMI_UPDATE_FT_IES_CMDID, vif->mid, cmd, len);
	FUNC1(cmd);

out:
	if (rc)
		FUNC5(wil, "update ft ies failed : %d\n", rc);

	return rc;
}