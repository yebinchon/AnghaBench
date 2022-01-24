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
struct cpsw_phy_sel_priv {int /*<<< orphan*/  gmii_sel; scalar_t__ rmii_clock_external; int /*<<< orphan*/  dev; } ;
typedef  int phy_interface_t ;

/* Variables and functions */
 int AM33XX_GMII_SEL_MODE_MII ; 
 int AM33XX_GMII_SEL_MODE_RGMII ; 
 int AM33XX_GMII_SEL_MODE_RMII ; 
 int AM33XX_GMII_SEL_RGMII1_IDMODE ; 
 int AM33XX_GMII_SEL_RGMII2_IDMODE ; 
 int AM33XX_GMII_SEL_RMII1_IO_CLK_EN ; 
 int AM33XX_GMII_SEL_RMII2_IO_CLK_EN ; 
 int FUNC0 (int) ; 
 int GMII_SEL_MODE_MASK ; 
#define  PHY_INTERFACE_MODE_MII 133 
#define  PHY_INTERFACE_MODE_RGMII 132 
#define  PHY_INTERFACE_MODE_RGMII_ID 131 
#define  PHY_INTERFACE_MODE_RGMII_RXID 130 
#define  PHY_INTERFACE_MODE_RGMII_TXID 129 
#define  PHY_INTERFACE_MODE_RMII 128 
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
	bool rgmii_id = false;

	reg = FUNC3(priv->gmii_sel);

	switch (phy_mode) {
	case PHY_INTERFACE_MODE_RMII:
		mode = AM33XX_GMII_SEL_MODE_RMII;
		break;

	case PHY_INTERFACE_MODE_RGMII:
		mode = AM33XX_GMII_SEL_MODE_RGMII;
		break;

	case PHY_INTERFACE_MODE_RGMII_ID:
	case PHY_INTERFACE_MODE_RGMII_RXID:
	case PHY_INTERFACE_MODE_RGMII_TXID:
		mode = AM33XX_GMII_SEL_MODE_RGMII;
		rgmii_id = true;
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

	mask = GMII_SEL_MODE_MASK << (slave * 2) | FUNC0(slave + 6);
	mask |= FUNC0(slave + 4);
	mode <<= slave * 2;

	if (priv->rmii_clock_external) {
		if (slave == 0)
			mode |= AM33XX_GMII_SEL_RMII1_IO_CLK_EN;
		else
			mode |= AM33XX_GMII_SEL_RMII2_IO_CLK_EN;
	}

	if (rgmii_id) {
		if (slave == 0)
			mode |= AM33XX_GMII_SEL_RGMII1_IDMODE;
		else
			mode |= AM33XX_GMII_SEL_RGMII2_IDMODE;
	}

	reg &= ~mask;
	reg |= mode;

	FUNC4(reg, priv->gmii_sel);
}