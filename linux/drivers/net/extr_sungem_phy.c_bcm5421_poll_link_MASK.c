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
struct mii_phy {int dummy; } ;

/* Variables and functions */
 int BCM5421_MODE_MASK ; 
 int BCM54XX_COPPER ; 
 int /*<<< orphan*/  MII_NCONFIG ; 
 int FUNC0 (struct mii_phy*) ; 
 int FUNC1 (struct mii_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mii_phy* phy)
{
	u32 phy_reg;
	int mode;

	/* find out in what mode we are */
	FUNC2(phy, MII_NCONFIG, 0x1000);
	phy_reg = FUNC1(phy, MII_NCONFIG);

	mode = (phy_reg & BCM5421_MODE_MASK) >> 5;

	if ( mode == BCM54XX_COPPER)
		return FUNC0(phy);

	/* try to find out whether we have a link */
	FUNC2(phy, MII_NCONFIG, 0x2000);
	phy_reg = FUNC1(phy, MII_NCONFIG);

	if (phy_reg & 0x0020)
		return 0;
	else
		return 1;
}