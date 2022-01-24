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
typedef  int u8 ;
struct mt7530_priv {int p5_intf_sel; int /*<<< orphan*/  reg_mutex; scalar_t__ p5_interface; int /*<<< orphan*/  ds; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct mt7530_priv* priv; } ;
typedef  scalar_t__ phy_interface_t ;

/* Variables and functions */
 int CSR_RGMII_EDGE_ALIGN ; 
 int FUNC0 (int) ; 
 int MHWTRAP_MANUAL ; 
 int MHWTRAP_P5_DIS ; 
 int MHWTRAP_P5_MAC_SEL ; 
 int MHWTRAP_P5_RGMII_MODE ; 
 int MHWTRAP_PHY0_SEL ; 
 int /*<<< orphan*/  MT7530_IO_DRV_CR ; 
 int /*<<< orphan*/  MT7530_MHWTRAP ; 
 int /*<<< orphan*/  MT7530_P5RGMIIRXCR ; 
 int /*<<< orphan*/  MT7530_P5RGMIITXCR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  P5_DISABLED 131 
#define  P5_INTF_SEL_GMAC5 130 
#define  P5_INTF_SEL_PHY_P0 129 
#define  P5_INTF_SEL_PHY_P4 128 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ PHY_INTERFACE_MODE_NA ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mt7530_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct dsa_switch *ds, phy_interface_t interface)
{
	struct mt7530_priv *priv = ds->priv;
	u8 tx_delay = 0;
	int val;

	FUNC9(&priv->reg_mutex);

	val = FUNC7(priv, MT7530_MHWTRAP);

	val |= MHWTRAP_MANUAL | MHWTRAP_P5_MAC_SEL | MHWTRAP_P5_DIS;
	val &= ~MHWTRAP_P5_RGMII_MODE & ~MHWTRAP_PHY0_SEL;

	switch (priv->p5_intf_sel) {
	case P5_INTF_SEL_PHY_P0:
		/* MT7530_P5_MODE_GPHY_P0: 2nd GMAC -> P5 -> P0 */
		val |= MHWTRAP_PHY0_SEL;
		/* fall through */
	case P5_INTF_SEL_PHY_P4:
		/* MT7530_P5_MODE_GPHY_P4: 2nd GMAC -> P5 -> P4 */
		val &= ~MHWTRAP_P5_MAC_SEL & ~MHWTRAP_P5_DIS;

		/* Setup the MAC by default for the cpu port */
		FUNC8(priv, FUNC1(5), 0x56300);
		break;
	case P5_INTF_SEL_GMAC5:
		/* MT7530_P5_MODE_GMAC: P5 -> External phy or 2nd GMAC */
		val &= ~MHWTRAP_P5_DIS;
		break;
	case P5_DISABLED:
		interface = PHY_INTERFACE_MODE_NA;
		break;
	default:
		FUNC5(ds->dev, "Unsupported p5_intf_sel %d\n",
			priv->p5_intf_sel);
		goto unlock_exit;
	}

	/* Setup RGMII settings */
	if (FUNC12(interface)) {
		val |= MHWTRAP_P5_RGMII_MODE;

		/* P5 RGMII RX Clock Control: delay setting for 1000M */
		FUNC8(priv, MT7530_P5RGMIIRXCR, CSR_RGMII_EDGE_ALIGN);

		/* Don't set delay in DSA mode */
		if (!FUNC6(priv->ds, 5) &&
		    (interface == PHY_INTERFACE_MODE_RGMII_TXID ||
		     interface == PHY_INTERFACE_MODE_RGMII_ID))
			tx_delay = 4; /* n * 0.5 ns */

		/* P5 RGMII TX Clock Control: delay x */
		FUNC8(priv, MT7530_P5RGMIITXCR,
			     FUNC0(0x10 + tx_delay));

		/* reduce P5 RGMII Tx driving, 8mA */
		FUNC8(priv, MT7530_IO_DRV_CR,
			     FUNC2(1) | FUNC3(1));
	}

	FUNC8(priv, MT7530_MHWTRAP, val);

	FUNC4(ds->dev, "Setup P5, HWTRAP=0x%x, intf_sel=%s, phy-mode=%s\n",
		val, FUNC11(priv->p5_intf_sel), FUNC13(interface));

	priv->p5_interface = interface;

unlock_exit:
	FUNC10(&priv->reg_mutex);
}