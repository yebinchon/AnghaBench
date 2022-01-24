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
struct net_device {int dummy; } ;
struct altera_tse_private {scalar_t__ phy_iface; } ;

/* Variables and functions */
 unsigned int BMCR_ANENABLE ; 
 unsigned int BMCR_FULLDPLX ; 
 unsigned int BMCR_RESET ; 
 unsigned int BMCR_SPEED1000 ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  SGMII_PCS_IF_MODE ; 
 int /*<<< orphan*/  SGMII_PCS_LINK_TIMER_0 ; 
 int /*<<< orphan*/  SGMII_PCS_LINK_TIMER_1 ; 
 int SGMII_PCS_SW_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 struct altera_tse_private* FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (struct altera_tse_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct altera_tse_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct altera_tse_private*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC2(dev);
	int n;
	unsigned int tmp_reg = 0;

	if (priv->phy_iface != PHY_INTERFACE_MODE_SGMII)
		return 0; /* Nothing to do, not in SGMII mode */

	/* The TSE SGMII PCS block looks a little like a PHY, it is
	 * mapped into the zeroth MDIO space of the MAC and it has
	 * ID registers like a PHY would.  Sadly this is often
	 * configured to zeroes, so don't be surprised if it does
	 * show 0x00000000.
	 */

	if (FUNC4(priv, 0x0000) &&
		FUNC4(priv, 0xffff) &&
		FUNC4(priv, 0xa5a5) &&
		FUNC4(priv, 0x5a5a)) {
		FUNC1(dev, "PCS PHY ID: 0x%04x%04x\n",
				FUNC3(priv, MII_PHYSID1),
				FUNC3(priv, MII_PHYSID2));
	} else {
		FUNC0(dev, "SGMII PCS Scratch memory test failed.\n");
		return -ENOMEM;
	}

	/* Starting on page 5-29 of the MegaCore Function User Guide
	 * Set SGMII Link timer to 1.6ms
	 */
	FUNC5(priv, SGMII_PCS_LINK_TIMER_0, 0x0D40);
	FUNC5(priv, SGMII_PCS_LINK_TIMER_1, 0x03);

	/* Enable SGMII Interface and Enable SGMII Auto Negotiation */
	FUNC5(priv, SGMII_PCS_IF_MODE, 0x3);

	/* Enable Autonegotiation */
	tmp_reg = FUNC3(priv, MII_BMCR);
	tmp_reg |= (BMCR_SPEED1000 | BMCR_FULLDPLX | BMCR_ANENABLE);
	FUNC5(priv, MII_BMCR, tmp_reg);

	/* Reset PCS block */
	tmp_reg |= BMCR_RESET;
	FUNC5(priv, MII_BMCR, tmp_reg);
	for (n = 0; n < SGMII_PCS_SW_RESET_TIMEOUT; n++) {
		if (!(FUNC3(priv, MII_BMCR) & BMCR_RESET)) {
			FUNC1(dev, "SGMII PCS block initialised OK\n");
			return 0;
		}
		FUNC6(1);
	}

	/* We failed to reset the block, return a timeout */
	FUNC0(dev, "SGMII PCS block reset failed.\n");
	return -ETIMEDOUT;
}