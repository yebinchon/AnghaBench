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
typedef  int u32 ;
struct cpsw_phy_sel_priv {int /*<<< orphan*/  gmii_sel; int /*<<< orphan*/  dev; scalar_t__ rmii_clock_external; } ;
typedef  int phy_interface_t ;

/* Variables and functions */
 int AM33XX_GMII_SEL_MODE_MII ; 
 int AM33XX_GMII_SEL_MODE_RGMII ; 
 int AM33XX_GMII_SEL_MODE_RMII ; 
 int GMII_SEL_MODE_MASK ; 
#define  PHY_INTERFACE_MODE_MII 133 
#define  PHY_INTERFACE_MODE_RGMII 132 
#define  PHY_INTERFACE_MODE_RGMII_ID 131 
#define  PHY_INTERFACE_MODE_RGMII_RXID 130 
#define  PHY_INTERFACE_MODE_RGMII_TXID 129 
#define  PHY_INTERFACE_MODE_RMII 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cpsw_phy_sel_priv *priv,
				 phy_interface_t phy_mode, int slave)
{
	u32 reg;
	u32 mask;
	u32 mode = 0;

	reg = FUNC3(priv->gmii_sel);

	switch (phy_mode) {
	case PHY_INTERFACE_MODE_RMII:
		mode = AM33XX_GMII_SEL_MODE_RMII;
		break;

	case PHY_INTERFACE_MODE_RGMII:
	case PHY_INTERFACE_MODE_RGMII_ID:
	case PHY_INTERFACE_MODE_RGMII_RXID:
	case PHY_INTERFACE_MODE_RGMII_TXID:
		mode = AM33XX_GMII_SEL_MODE_RGMII;
		break;

	default:
		FUNC1(priv->dev,
			 "Unsupported PHY mode: \"%s\". Defaulting to MII.\n",
			FUNC2(phy_mode));
		/* fallthrough */
	case PHY_INTERFACE_MODE_MII:
		mode = AM33XX_GMII_SEL_MODE_MII;
		break;
	}

	switch (slave) {
	case 0:
		mask = GMII_SEL_MODE_MASK;
		break;
	case 1:
		mask = GMII_SEL_MODE_MASK << 4;
		mode <<= 4;
		break;
	default:
		FUNC0(priv->dev, "invalid slave number...\n");
		return;
	}

	if (priv->rmii_clock_external)
		FUNC0(priv->dev, "RMII External clock is not supported\n");

	reg &= ~mask;
	reg |= mode;

	FUNC4(reg, priv->gmii_sel);
}