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
typedef  int u16 ;
struct mii_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM5201_MULTIPHY ; 
 int MII_BCM5201_MULTIPHY_SERIALMODE ; 
 int MII_BCM5400_GB_CONTROL ; 
 int MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP ; 
 int MII_PHYSID2 ; 
 int FUNC0 (struct mii_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_phy*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_phy*,int) ; 
 int FUNC3 (struct mii_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mii_phy* phy)
{
	u16 data;
	int rev;

	rev = FUNC3(phy, MII_PHYSID2) & 0x000f;
	if (rev == 0 || rev == 3) {
		/* Some revisions of 5401 appear to need this
		 * initialisation sequence to disable, according
		 * to OF, "tap power management"
		 *
		 * WARNING ! OF and Darwin don't agree on the
		 * register addresses. OF seem to interpret the
		 * register numbers below as decimal
		 *
		 * Note: This should (and does) match tg3_init_5401phy_dsp
		 *       in the tg3.c driver. -DaveM
		 */
		FUNC4(phy, 0x18, 0x0c20);
		FUNC4(phy, 0x17, 0x0012);
		FUNC4(phy, 0x15, 0x1804);
		FUNC4(phy, 0x17, 0x0013);
		FUNC4(phy, 0x15, 0x1204);
		FUNC4(phy, 0x17, 0x8006);
		FUNC4(phy, 0x15, 0x0132);
		FUNC4(phy, 0x17, 0x8006);
		FUNC4(phy, 0x15, 0x0232);
		FUNC4(phy, 0x17, 0x201f);
		FUNC4(phy, 0x15, 0x0a20);
	}

	/* Configure for gigabit full duplex */
	data = FUNC3(phy, MII_BCM5400_GB_CONTROL);
	data |= MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP;
	FUNC4(phy, MII_BCM5400_GB_CONTROL, data);

	FUNC5(10);

	/* Reset and configure cascaded 10/100 PHY */
	(void)FUNC2(phy, 0x1f);

	data = FUNC0(phy, 0x1f, MII_BCM5201_MULTIPHY);
	data |= MII_BCM5201_MULTIPHY_SERIALMODE;
	FUNC1(phy, 0x1f, MII_BCM5201_MULTIPHY, data);

	return 0;
}