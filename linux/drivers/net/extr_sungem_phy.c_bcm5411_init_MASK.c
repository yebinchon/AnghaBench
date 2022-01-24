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
 int BMCR_RESET ; 
 int MII_BCM5400_GB_CONTROL ; 
 int MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP ; 
 int MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct mii_phy*,int) ; 
 int FUNC1 (struct mii_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mii_phy* phy)
{
	u16 data;

	/* Here's some more Apple black magic to setup
	 * some voltage stuffs.
	 */
	FUNC2(phy, 0x1c, 0x8c23);
	FUNC2(phy, 0x1c, 0x8ca3);
	FUNC2(phy, 0x1c, 0x8c23);

	/* Here, Apple seems to want to reset it, do
	 * it as well
	 */
	FUNC2(phy, MII_BMCR, BMCR_RESET);
	FUNC2(phy, MII_BMCR, 0x1340);

	data = FUNC1(phy, MII_BCM5400_GB_CONTROL);
	data |= MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP;
	FUNC2(phy, MII_BCM5400_GB_CONTROL, data);

	FUNC3(10);

	/* Reset and configure cascaded 10/100 PHY */
	(void)FUNC0(phy, 0x1f);

	return 0;
}