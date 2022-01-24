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
typedef  int u32 ;
struct phy_device {int /*<<< orphan*/  supported; } ;
struct net_device {struct phy_device* phydev; } ;
struct device {int dummy; } ;
struct bcmgenet_priv {int phy_interface; int ext_phy; scalar_t__ internal_phy; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BMCR_ISOLATE ; 
 int CMD_LCL_LOOP_EN ; 
 int CMD_SW_RESET ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Full_BIT ; 
 int /*<<< orphan*/  EXT_RGMII_OOB_CTRL ; 
 scalar_t__ FUNC1 (struct bcmgenet_priv*) ; 
 scalar_t__ FUNC2 (struct bcmgenet_priv*) ; 
 scalar_t__ FUNC3 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  MII_BMCR ; 
#define  PHY_INTERFACE_MODE_INTERNAL 133 
#define  PHY_INTERFACE_MODE_MII 132 
#define  PHY_INTERFACE_MODE_MOCA 131 
#define  PHY_INTERFACE_MODE_REVMII 130 
#define  PHY_INTERFACE_MODE_RGMII 129 
#define  PHY_INTERFACE_MODE_RGMII_TXID 128 
 int PORT_MODE_EXT_EPHY ; 
 int PORT_MODE_EXT_GPHY ; 
 int PORT_MODE_EXT_RVMII_25 ; 
 int PORT_MODE_EXT_RVMII_50 ; 
 int PORT_MODE_INT_EPHY ; 
 int PORT_MODE_INT_GPHY ; 
 int RGMII_MODE_EN ; 
 int RGMII_MODE_EN_V123 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SYS_PORT_CTRL ; 
 int /*<<< orphan*/  UMAC_CMD ; 
 int FUNC5 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,int const) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*) ; 
 struct bcmgenet_priv* FUNC15 (struct net_device*) ; 
 int FUNC16 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

int FUNC20(struct net_device *dev, bool init)
{
	struct bcmgenet_priv *priv = FUNC15(dev);
	struct phy_device *phydev = dev->phydev;
	struct device *kdev = &priv->pdev->dev;
	const char *phy_name = NULL;
	u32 id_mode_dis = 0;
	u32 port_ctrl;
	int bmcr = -1;
	int ret;
	u32 reg;

	/* MAC clocking workaround during reset of umac state machines */
	reg = FUNC9(priv, UMAC_CMD);
	if (reg & CMD_SW_RESET) {
		/* An MII PHY must be isolated to prevent TXC contention */
		if (priv->phy_interface == PHY_INTERFACE_MODE_MII) {
			ret = FUNC16(phydev, MII_BMCR);
			if (ret >= 0) {
				bmcr = ret;
				ret = FUNC18(phydev, MII_BMCR,
						bmcr | BMCR_ISOLATE);
			}
			if (ret) {
				FUNC14(dev, "failed to isolate PHY\n");
				return ret;
			}
		}
		/* Switch MAC clocking to RGMII generated clock */
		FUNC8(priv, PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
		/* Ensure 5 clks with Rx disabled
		 * followed by 5 clks with Reset asserted
		 */
		FUNC19(4);
		reg &= ~(CMD_SW_RESET | CMD_LCL_LOOP_EN);
		FUNC10(priv, reg, UMAC_CMD);
		/* Ensure 5 more clocks before Rx is enabled */
		FUNC19(2);
	}

	priv->ext_phy = !priv->internal_phy &&
			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);

	switch (priv->phy_interface) {
	case PHY_INTERFACE_MODE_INTERNAL:
	case PHY_INTERFACE_MODE_MOCA:
		/* Irrespective of the actually configured PHY speed (100 or
		 * 1000) GENETv4 only has an internal GPHY so we will just end
		 * up masking the Gigabit features from what we support, not
		 * switching to the EPHY
		 */
		if (FUNC4(priv))
			port_ctrl = PORT_MODE_INT_GPHY;
		else
			port_ctrl = PORT_MODE_INT_EPHY;

		FUNC8(priv, port_ctrl, SYS_PORT_CTRL);

		if (priv->internal_phy) {
			phy_name = "internal PHY";
		} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
			phy_name = "MoCA";
			FUNC7(priv);
		}
		break;

	case PHY_INTERFACE_MODE_MII:
		phy_name = "external MII";
		FUNC17(phydev, SPEED_100);
		FUNC8(priv,
				    PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);
		/* Restore the MII PHY after isolation */
		if (bmcr >= 0)
			FUNC18(phydev, MII_BMCR, bmcr);
		break;

	case PHY_INTERFACE_MODE_REVMII:
		phy_name = "external RvMII";
		/* of_mdiobus_register took care of reading the 'max-speed'
		 * PHY property for us, effectively limiting the PHY supported
		 * capabilities, use that knowledge to also configure the
		 * Reverse MII interface correctly.
		 */
		if (FUNC13(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
				      dev->phydev->supported))
			port_ctrl = PORT_MODE_EXT_RVMII_50;
		else
			port_ctrl = PORT_MODE_EXT_RVMII_25;
		FUNC8(priv, port_ctrl, SYS_PORT_CTRL);
		break;

	case PHY_INTERFACE_MODE_RGMII:
		/* RGMII_NO_ID: TXC transitions at the same time as TXD
		 *		(requires PCB or receiver-side delay)
		 * RGMII:	Add 2ns delay on TXC (90 degree shift)
		 *
		 * ID is implicitly disabled for 100Mbps (RG)MII operation.
		 */
		id_mode_dis = FUNC0(16);
		/* fall through */
	case PHY_INTERFACE_MODE_RGMII_TXID:
		if (id_mode_dis)
			phy_name = "external RGMII (no delay)";
		else
			phy_name = "external RGMII (TX delay)";
		FUNC8(priv,
				    PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
		break;
	default:
		FUNC11(kdev, "unknown phy mode: %d\n", priv->phy_interface);
		return -EINVAL;
	}

	/* This is an external PHY (xMII), so we need to enable the RGMII
	 * block for the interface to work
	 */
	if (priv->ext_phy) {
		reg = FUNC5(priv, EXT_RGMII_OOB_CTRL);
		reg |= id_mode_dis;
		if (FUNC1(priv) || FUNC2(priv) || FUNC3(priv))
			reg |= RGMII_MODE_EN_V123;
		else
			reg |= RGMII_MODE_EN;
		FUNC6(priv, reg, EXT_RGMII_OOB_CTRL);
	}

	if (init)
		FUNC12(kdev, "configuring instance for %s\n", phy_name);

	return 0;
}