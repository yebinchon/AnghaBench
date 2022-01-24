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
struct ravb_private {scalar_t__ phy_interface; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APSR ; 
 int /*<<< orphan*/  APSR_DM ; 
 int APSR_DM_RDM ; 
 int APSR_DM_TDM ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ravb_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ravb_delay_mode_quirk_match ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC1(ndev);
	int set = 0;

	if (priv->phy_interface == PHY_INTERFACE_MODE_RGMII_ID ||
	    priv->phy_interface == PHY_INTERFACE_MODE_RGMII_RXID)
		set |= APSR_DM_RDM;

	if (priv->phy_interface == PHY_INTERFACE_MODE_RGMII_ID ||
	    priv->phy_interface == PHY_INTERFACE_MODE_RGMII_TXID) {
		if (!FUNC0(FUNC4(ravb_delay_mode_quirk_match),
			  "phy-mode %s requires TX clock internal delay mode which is not supported by this hardware revision. Please update device tree",
			  FUNC2(priv->phy_interface)))
			set |= APSR_DM_TDM;
	}

	FUNC3(ndev, APSR, APSR_DM, set);
}