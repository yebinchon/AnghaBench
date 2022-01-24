#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wmi_fw_version {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct ieee80211_hw {TYPE_1__* wiphy; } ;
struct ath9k_htc_priv {int fw_version_major; int fw_version_minor; int /*<<< orphan*/  fw_flags; int /*<<< orphan*/  dev; struct ieee80211_hw* hw; } ;
typedef  int /*<<< orphan*/  cmd_rsp ;
struct TYPE_2__ {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HTC_FWFLAG_NO_RMW ; 
 int MAJOR_VERSION_REQ ; 
 int MINOR_VERSION_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_GET_FW_VERSION ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wmi_fw_version*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ath9k_htc_priv *priv)
{
	struct ieee80211_hw *hw = priv->hw;
	struct wmi_fw_version cmd_rsp;
	int ret;

	FUNC4(&cmd_rsp, 0, sizeof(cmd_rsp));

	FUNC0(WMI_GET_FW_VERSION);
	if (ret)
		return -EINVAL;

	priv->fw_version_major = FUNC1(cmd_rsp.major);
	priv->fw_version_minor = FUNC1(cmd_rsp.minor);

	FUNC6(hw->wiphy->fw_version, sizeof(hw->wiphy->fw_version), "%d.%d",
		 priv->fw_version_major,
		 priv->fw_version_minor);

	FUNC3(priv->dev, "ath9k_htc: FW Version: %d.%d\n",
		 priv->fw_version_major,
		 priv->fw_version_minor);

	/*
	 * Check if the available FW matches the driver's
	 * required version.
	 */
	if (priv->fw_version_major != MAJOR_VERSION_REQ ||
	    priv->fw_version_minor < MINOR_VERSION_REQ) {
		FUNC2(priv->dev, "ath9k_htc: Please upgrade to FW version %d.%d\n",
			MAJOR_VERSION_REQ, MINOR_VERSION_REQ);
		return -EINVAL;
	}

	if (priv->fw_version_major == 1 && priv->fw_version_minor < 4)
		FUNC5(HTC_FWFLAG_NO_RMW, &priv->fw_flags);

	FUNC3(priv->dev, "FW RMW support: %s\n",
		FUNC7(HTC_FWFLAG_NO_RMW, &priv->fw_flags) ? "Off" : "On");

	return 0;
}