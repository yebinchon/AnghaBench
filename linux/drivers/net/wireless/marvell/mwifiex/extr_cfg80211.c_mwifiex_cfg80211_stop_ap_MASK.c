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
struct net_device {int dummy; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; int /*<<< orphan*/  netdev; int /*<<< orphan*/  bss_cfg; scalar_t__ ap_11n_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HOST_CMD_APCMD_SYS_RESET ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_UAP_BSS_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct wiphy *wiphy, struct net_device *dev)
{
	struct mwifiex_private *priv = FUNC4(dev);

	FUNC1(priv);

	if (FUNC3(priv))
		FUNC2(priv->adapter, ERROR,
			    "Failed to delete mgmt IEs!\n");

	priv->ap_11n_enabled = 0;
	FUNC0(&priv->bss_cfg, 0, sizeof(priv->bss_cfg));

	if (FUNC5(priv, HostCmd_CMD_UAP_BSS_STOP,
			     HostCmd_ACT_GEN_SET, 0, NULL, true)) {
		FUNC2(priv->adapter, ERROR,
			    "Failed to stop the BSS\n");
		return -1;
	}

	if (FUNC5(priv, HOST_CMD_APCMD_SYS_RESET,
			     HostCmd_ACT_GEN_SET, 0, NULL, true)) {
		FUNC2(priv->adapter, ERROR,
			    "Failed to reset BSS\n");
		return -1;
	}

	if (FUNC8(priv->netdev))
		FUNC7(priv->netdev);
	FUNC6(priv->netdev, priv->adapter);

	return 0;
}