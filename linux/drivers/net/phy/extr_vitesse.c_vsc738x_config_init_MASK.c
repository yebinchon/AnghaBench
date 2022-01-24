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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_PHYSID2 ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int,int,int) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	u16 rev;
	/* This magic sequence appear in the application note
	 * "VSC7385/7388 PHY Configuration".
	 *
	 * Maybe one day we will get to know what it all means.
	 */
	FUNC2(phydev, 0x1f, 0x2a30);
	FUNC0(phydev, 0x08, 0x0200, 0x0200);
	FUNC2(phydev, 0x1f, 0x52b5);
	FUNC2(phydev, 0x10, 0xb68a);
	FUNC0(phydev, 0x12, 0xff07, 0x0003);
	FUNC0(phydev, 0x11, 0x00ff, 0x00a2);
	FUNC2(phydev, 0x10, 0x968a);
	FUNC2(phydev, 0x1f, 0x2a30);
	FUNC0(phydev, 0x08, 0x0200, 0x0000);
	FUNC2(phydev, 0x1f, 0x0000);

	/* Read revision */
	rev = FUNC1(phydev, MII_PHYSID2);
	rev &= 0x0f;

	/* Special quirk for revision 0 */
	if (rev == 0) {
		FUNC2(phydev, 0x1f, 0x2a30);
		FUNC0(phydev, 0x08, 0x0200, 0x0200);
		FUNC2(phydev, 0x1f, 0x52b5);
		FUNC2(phydev, 0x12, 0x0000);
		FUNC2(phydev, 0x11, 0x0689);
		FUNC2(phydev, 0x10, 0x8f92);
		FUNC2(phydev, 0x1f, 0x52b5);
		FUNC2(phydev, 0x12, 0x0000);
		FUNC2(phydev, 0x11, 0x0e35);
		FUNC2(phydev, 0x10, 0x9786);
		FUNC2(phydev, 0x1f, 0x2a30);
		FUNC0(phydev, 0x08, 0x0200, 0x0000);
		FUNC2(phydev, 0x17, 0xff80);
		FUNC2(phydev, 0x17, 0x0000);
	}

	FUNC2(phydev, 0x1f, 0x0000);
	FUNC2(phydev, 0x12, 0x0048);

	if (rev == 0) {
		FUNC2(phydev, 0x1f, 0x2a30);
		FUNC2(phydev, 0x14, 0x6600);
		FUNC2(phydev, 0x1f, 0x0000);
		FUNC2(phydev, 0x18, 0xa24e);
	} else {
		FUNC2(phydev, 0x1f, 0x2a30);
		FUNC0(phydev, 0x16, 0x0fc0, 0x0240);
		FUNC0(phydev, 0x14, 0x6000, 0x4000);
		/* bits 14-15 in extended register 0x14 controls DACG amplitude
		 * 6 = -8%, 2 is hardware default
		 */
		FUNC2(phydev, 0x1f, 0x0001);
		FUNC0(phydev, 0x14, 0xe000, 0x6000);
		FUNC2(phydev, 0x1f, 0x0000);
	}

	FUNC3(phydev);

	return 0;
}