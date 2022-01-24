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
typedef  int u8 ;
struct phy_device {int speed; int link; scalar_t__ interface; int /*<<< orphan*/  duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;
struct ethtool_eee {int /*<<< orphan*/  eee_enabled; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct b53_device* priv; } ;
struct b53_device {int cpu_port; TYPE_1__* ports; } ;
struct TYPE_2__ {struct ethtool_eee eee; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int B53_PORT_OVERRIDE_CTRL ; 
 int B53_RGMII_CTRL_IMP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int MLO_PAUSE_RX ; 
 int MLO_PAUSE_TX ; 
 int MLO_PAUSE_TXRX_MASK ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ; 
 int PORT_OVERRIDE_RV_MII_25 ; 
 int RGMII_CTRL_DLL_RXC ; 
 int RGMII_CTRL_DLL_TXC ; 
 int RGMII_CTRL_TIMING_SEL ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int,struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b53_device*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct b53_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct b53_device*) ; 
 scalar_t__ FUNC9 (struct b53_device*) ; 
 scalar_t__ FUNC10 (struct b53_device*) ; 
 scalar_t__ FUNC11 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct dsa_switch *ds, int port,
			    struct phy_device *phydev)
{
	struct b53_device *dev = ds->priv;
	struct ethtool_eee *p = &dev->ports[port].eee;
	u8 rgmii_ctrl = 0, reg = 0, off;
	int pause = 0;

	if (!FUNC12(phydev))
		return;

	/* Enable flow control on BCM5301x's CPU port */
	if (FUNC8(dev) && port == dev->cpu_port)
		pause = MLO_PAUSE_TXRX_MASK;

	if (phydev->pause) {
		if (phydev->asym_pause)
			pause |= MLO_PAUSE_TX;
		pause |= MLO_PAUSE_RX;
	}

	FUNC3(dev, port, phydev->speed, phydev->duplex, pause);
	FUNC2(dev, port, phydev->link);

	if (FUNC9(dev) && FUNC11(phydev)) {
		if (port == 8)
			off = B53_RGMII_CTRL_IMP;
		else
			off = FUNC0(port);

		/* Configure the port RGMII clock delay by DLL disabled and
		 * tx_clk aligned timing (restoring to reset defaults)
		 */
		FUNC4(dev, B53_CTRL_PAGE, off, &rgmii_ctrl);
		rgmii_ctrl &= ~(RGMII_CTRL_DLL_RXC | RGMII_CTRL_DLL_TXC |
				RGMII_CTRL_TIMING_SEL);

		/* PHY_INTERFACE_MODE_RGMII_TXID means TX internal delay, make
		 * sure that we enable the port TX clock internal delay to
		 * account for this internal delay that is inserted, otherwise
		 * the switch won't be able to receive correctly.
		 *
		 * PHY_INTERFACE_MODE_RGMII means that we are not introducing
		 * any delay neither on transmission nor reception, so the
		 * BCM53125 must also be configured accordingly to account for
		 * the lack of delay and introduce
		 *
		 * The BCM53125 switch has its RX clock and TX clock control
		 * swapped, hence the reason why we modify the TX clock path in
		 * the "RGMII" case
		 */
		if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
			rgmii_ctrl |= RGMII_CTRL_DLL_TXC;
		if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
			rgmii_ctrl |= RGMII_CTRL_DLL_TXC | RGMII_CTRL_DLL_RXC;
		rgmii_ctrl |= RGMII_CTRL_TIMING_SEL;
		FUNC5(dev, B53_CTRL_PAGE, off, rgmii_ctrl);

		FUNC7(ds->dev, "Configured port %d for %s\n", port,
			 FUNC13(phydev->interface));
	}

	/* configure MII port if necessary */
	if (FUNC10(dev)) {
		FUNC4(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
			  &reg);

		/* reverse mii needs to be enabled */
		if (!(reg & PORT_OVERRIDE_RV_MII_25)) {
			FUNC5(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
				   reg | PORT_OVERRIDE_RV_MII_25);
			FUNC4(dev, B53_CTRL_PAGE, B53_PORT_OVERRIDE_CTRL,
				  &reg);

			if (!(reg & PORT_OVERRIDE_RV_MII_25)) {
				FUNC6(ds->dev,
					"Failed to enable reverse MII mode\n");
				return;
			}
		}
	} else if (FUNC8(dev)) {
		if (port != dev->cpu_port) {
			FUNC3(dev, dev->cpu_port, 2000,
					      DUPLEX_FULL, MLO_PAUSE_TXRX_MASK);
			FUNC2(dev, dev->cpu_port, 1);
		}
	}

	/* Re-negotiate EEE if it was enabled already */
	p->eee_enabled = FUNC1(ds, port, phydev);
}