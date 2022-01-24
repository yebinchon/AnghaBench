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
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC9(struct rtl8169_private *tp)
{
	struct phy_device *phydev = tp->phydev;

	FUNC3(phydev, 0xad4, 0x10, 0x03ff, 0x0084);
	FUNC3(phydev, 0xad4, 0x17, 0x0000, 0x0010);
	FUNC3(phydev, 0xad1, 0x13, 0x03ff, 0x0006);
	FUNC3(phydev, 0xad3, 0x11, 0x003f, 0x0006);
	FUNC3(phydev, 0xac0, 0x14, 0x0000, 0x1100);
	FUNC3(phydev, 0xac8, 0x15, 0xf000, 0x7000);
	FUNC3(phydev, 0xad1, 0x14, 0x0000, 0x0400);
	FUNC3(phydev, 0xad1, 0x15, 0x0000, 0x03ff);
	FUNC3(phydev, 0xad1, 0x16, 0x0000, 0x03ff);

	FUNC5(phydev, 0x1f, 0x0a43);
	FUNC5(phydev, 0x13, 0x80ea);
	FUNC2(phydev, 0x14, 0xff00, 0xc400);
	FUNC5(phydev, 0x13, 0x80eb);
	FUNC2(phydev, 0x14, 0x0700, 0x0300);
	FUNC5(phydev, 0x13, 0x80f8);
	FUNC2(phydev, 0x14, 0xff00, 0x1c00);
	FUNC5(phydev, 0x13, 0x80f1);
	FUNC2(phydev, 0x14, 0xff00, 0x3000);
	FUNC5(phydev, 0x13, 0x80fe);
	FUNC2(phydev, 0x14, 0xff00, 0xa500);
	FUNC5(phydev, 0x13, 0x8102);
	FUNC2(phydev, 0x14, 0xff00, 0x5000);
	FUNC5(phydev, 0x13, 0x8105);
	FUNC2(phydev, 0x14, 0xff00, 0x3300);
	FUNC5(phydev, 0x13, 0x8100);
	FUNC2(phydev, 0x14, 0xff00, 0x7000);
	FUNC5(phydev, 0x13, 0x8104);
	FUNC2(phydev, 0x14, 0xff00, 0xf000);
	FUNC5(phydev, 0x13, 0x8106);
	FUNC2(phydev, 0x14, 0xff00, 0x6500);
	FUNC5(phydev, 0x13, 0x80dc);
	FUNC2(phydev, 0x14, 0xff00, 0xed00);
	FUNC5(phydev, 0x13, 0x80df);
	FUNC4(phydev, 0x14, FUNC0(8));
	FUNC5(phydev, 0x13, 0x80e1);
	FUNC1(phydev, 0x14, FUNC0(8));
	FUNC5(phydev, 0x1f, 0x0000);

	FUNC3(phydev, 0xbf0, 0x13, 0x003f, 0x0038);
	FUNC6(phydev, 0xa43, 0x13, 0x819f);
	FUNC6(phydev, 0xa43, 0x14, 0xd0b6);

	FUNC6(phydev, 0xbc3, 0x12, 0x5555);
	FUNC3(phydev, 0xbf0, 0x15, 0x0e00, 0x0a00);
	FUNC3(phydev, 0xa5c, 0x10, 0x0400, 0x0000);
	FUNC3(phydev, 0xa44, 0x11, 0x0000, 0x0800);

	FUNC7(tp);
	FUNC8(tp);
}