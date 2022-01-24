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
struct phy_device {TYPE_1__* attached_dev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_88E1318S_PHY_CSIER ; 
 int MII_88E1318S_PHY_CSIER_WOL_EIE ; 
 int /*<<< orphan*/  MII_88E1318S_PHY_LED_TCR ; 
 int MII_88E1318S_PHY_LED_TCR_FORCE_INT ; 
 int MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW ; 
 int MII_88E1318S_PHY_LED_TCR_INTn_ENABLE ; 
 int /*<<< orphan*/  MII_88E1318S_PHY_MAGIC_PACKET_WORD0 ; 
 int /*<<< orphan*/  MII_88E1318S_PHY_MAGIC_PACKET_WORD1 ; 
 int /*<<< orphan*/  MII_88E1318S_PHY_MAGIC_PACKET_WORD2 ; 
 int /*<<< orphan*/  MII_88E1318S_PHY_WOL_CTRL ; 
 int MII_88E1318S_PHY_WOL_CTRL_CLEAR_WOL_STATUS ; 
 int MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE ; 
 int /*<<< orphan*/  MII_M1011_IEVENT ; 
 int /*<<< orphan*/  MII_MARVELL_COPPER_PAGE ; 
 int /*<<< orphan*/  MII_MARVELL_LED_PAGE ; 
 int /*<<< orphan*/  MII_MARVELL_WOL_PAGE ; 
 int WAKE_MAGIC ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*,int,int) ; 
 int FUNC6 (struct phy_device*) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev,
			    struct ethtool_wolinfo *wol)
{
	int err = 0, oldpage;

	oldpage = FUNC6(phydev);
	if (oldpage < 0)
		goto error;

	if (wol->wolopts & WAKE_MAGIC) {
		/* Explicitly switch to page 0x00, just to be sure */
		err = FUNC3(phydev, MII_MARVELL_COPPER_PAGE);
		if (err < 0)
			goto error;

		/* If WOL event happened once, the LED[2] interrupt pin
		 * will not be cleared unless we reading the interrupt status
		 * register. If interrupts are in use, the normal interrupt
		 * handling will clear the WOL event. Clear the WOL event
		 * before enabling it if !phy_interrupt_is_valid()
		 */
		if (!FUNC4(phydev))
			FUNC1(phydev, MII_M1011_IEVENT);

		/* Enable the WOL interrupt */
		err = FUNC0(phydev, MII_88E1318S_PHY_CSIER, 0,
				   MII_88E1318S_PHY_CSIER_WOL_EIE);
		if (err < 0)
			goto error;

		err = FUNC3(phydev, MII_MARVELL_LED_PAGE);
		if (err < 0)
			goto error;

		/* Setup LED[2] as interrupt pin (active low) */
		err = FUNC0(phydev, MII_88E1318S_PHY_LED_TCR,
				   MII_88E1318S_PHY_LED_TCR_FORCE_INT,
				   MII_88E1318S_PHY_LED_TCR_INTn_ENABLE |
				   MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW);
		if (err < 0)
			goto error;

		err = FUNC3(phydev, MII_MARVELL_WOL_PAGE);
		if (err < 0)
			goto error;

		/* Store the device address for the magic packet */
		err = FUNC2(phydev, MII_88E1318S_PHY_MAGIC_PACKET_WORD2,
				((phydev->attached_dev->dev_addr[5] << 8) |
				 phydev->attached_dev->dev_addr[4]));
		if (err < 0)
			goto error;
		err = FUNC2(phydev, MII_88E1318S_PHY_MAGIC_PACKET_WORD1,
				((phydev->attached_dev->dev_addr[3] << 8) |
				 phydev->attached_dev->dev_addr[2]));
		if (err < 0)
			goto error;
		err = FUNC2(phydev, MII_88E1318S_PHY_MAGIC_PACKET_WORD0,
				((phydev->attached_dev->dev_addr[1] << 8) |
				 phydev->attached_dev->dev_addr[0]));
		if (err < 0)
			goto error;

		/* Clear WOL status and enable magic packet matching */
		err = FUNC0(phydev, MII_88E1318S_PHY_WOL_CTRL, 0,
				   MII_88E1318S_PHY_WOL_CTRL_CLEAR_WOL_STATUS |
				   MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE);
		if (err < 0)
			goto error;
	} else {
		err = FUNC3(phydev, MII_MARVELL_WOL_PAGE);
		if (err < 0)
			goto error;

		/* Clear WOL status and disable magic packet matching */
		err = FUNC0(phydev, MII_88E1318S_PHY_WOL_CTRL,
				   MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE,
				   MII_88E1318S_PHY_WOL_CTRL_CLEAR_WOL_STATUS);
		if (err < 0)
			goto error;
	}

error:
	return FUNC5(phydev, oldpage, err);
}