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
struct rtl8169_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC8(struct rtl8169_private *tp)
{
	struct phy_device *phydev = tp->phydev;
	int i;

	FUNC1(phydev, 0xad4, 0x17, 0x0000, 0x0010);
	FUNC1(phydev, 0xad1, 0x13, 0x03ff, 0x03ff);
	FUNC1(phydev, 0xad3, 0x11, 0x003f, 0x0006);
	FUNC1(phydev, 0xac0, 0x14, 0x1100, 0x0000);
	FUNC1(phydev, 0xacc, 0x10, 0x0003, 0x0002);
	FUNC1(phydev, 0xad4, 0x10, 0x00e7, 0x0044);
	FUNC1(phydev, 0xac1, 0x12, 0x0080, 0x0000);
	FUNC1(phydev, 0xac8, 0x10, 0x0300, 0x0000);
	FUNC1(phydev, 0xac5, 0x17, 0x0007, 0x0002);
	FUNC4(phydev, 0xad4, 0x16, 0x00a8);
	FUNC4(phydev, 0xac5, 0x16, 0x01ff);
	FUNC1(phydev, 0xac8, 0x15, 0x00f0, 0x0030);

	FUNC3(phydev, 0x1f, 0x0b87);
	FUNC3(phydev, 0x16, 0x80a2);
	FUNC3(phydev, 0x17, 0x0153);
	FUNC3(phydev, 0x16, 0x809c);
	FUNC3(phydev, 0x17, 0x0153);
	FUNC3(phydev, 0x1f, 0x0000);

	FUNC3(phydev, 0x1f, 0x0a43);
	FUNC3(phydev, 0x13, 0x81B3);
	FUNC3(phydev, 0x14, 0x0043);
	FUNC3(phydev, 0x14, 0x00A7);
	FUNC3(phydev, 0x14, 0x00D6);
	FUNC3(phydev, 0x14, 0x00EC);
	FUNC3(phydev, 0x14, 0x00F6);
	FUNC3(phydev, 0x14, 0x00FB);
	FUNC3(phydev, 0x14, 0x00FD);
	FUNC3(phydev, 0x14, 0x00FF);
	FUNC3(phydev, 0x14, 0x00BB);
	FUNC3(phydev, 0x14, 0x0058);
	FUNC3(phydev, 0x14, 0x0029);
	FUNC3(phydev, 0x14, 0x0013);
	FUNC3(phydev, 0x14, 0x0009);
	FUNC3(phydev, 0x14, 0x0004);
	FUNC3(phydev, 0x14, 0x0002);
	for (i = 0; i < 25; i++)
		FUNC3(phydev, 0x14, 0x0000);

	FUNC3(phydev, 0x13, 0x8257);
	FUNC3(phydev, 0x14, 0x020F);

	FUNC3(phydev, 0x13, 0x80EA);
	FUNC3(phydev, 0x14, 0x7843);
	FUNC3(phydev, 0x1f, 0x0000);

	FUNC6(tp);

	FUNC1(phydev, 0xd06, 0x14, 0x0000, 0x2000);

	FUNC3(phydev, 0x1f, 0x0a43);
	FUNC3(phydev, 0x13, 0x81a2);
	FUNC2(phydev, 0x14, FUNC0(8));
	FUNC3(phydev, 0x1f, 0x0000);

	FUNC1(phydev, 0xb54, 0x16, 0xff00, 0xdb00);
	FUNC1(phydev, 0xa45, 0x12, 0x0001, 0x0000);
	FUNC1(phydev, 0xa5d, 0x12, 0x0000, 0x0020);
	FUNC1(phydev, 0xad4, 0x17, 0x0010, 0x0000);
	FUNC1(phydev, 0xa86, 0x15, 0x0001, 0x0000);
	FUNC1(phydev, 0xa44, 0x11, 0x0000, 0x0800);

	FUNC5(tp);
	FUNC7(tp);
}