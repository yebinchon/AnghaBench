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
struct rtl8169_private {TYPE_1__* dev; } ;
struct phy_reg {int member_0; int member_1; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,struct phy_reg const*) ; 

__attribute__((used)) static void FUNC7(struct rtl8169_private *tp)
{
	static const struct phy_reg phy_reg_init[] = {
		/* Enable Delay cap */
		{ 0x1f, 0x0004 },
		{ 0x1f, 0x0007 },
		{ 0x1e, 0x00ac },
		{ 0x18, 0x0006 },
		{ 0x1f, 0x0002 },
		{ 0x1f, 0x0000 },
		{ 0x1f, 0x0000 },

		/* Channel estimation fine tune */
		{ 0x1f, 0x0003 },
		{ 0x09, 0xa20f },
		{ 0x1f, 0x0000 },
		{ 0x1f, 0x0000 },

		/* Green Setting */
		{ 0x1f, 0x0005 },
		{ 0x05, 0x8b5b },
		{ 0x06, 0x9222 },
		{ 0x05, 0x8b6d },
		{ 0x06, 0x8000 },
		{ 0x05, 0x8b76 },
		{ 0x06, 0x8000 },
		{ 0x1f, 0x0000 }
	};

	FUNC1(tp);

	FUNC6(tp, phy_reg_init);

	/* For 4-corner performance improve */
	FUNC5(tp, 0x1f, 0x0005);
	FUNC5(tp, 0x05, 0x8b80);
	FUNC4(tp, 0x17, 0x0006, 0x0000);
	FUNC5(tp, 0x1f, 0x0000);

	/* PHY auto speed down */
	FUNC5(tp, 0x1f, 0x0004);
	FUNC5(tp, 0x1f, 0x0007);
	FUNC5(tp, 0x1e, 0x002d);
	FUNC4(tp, 0x18, 0x0010, 0x0000);
	FUNC5(tp, 0x1f, 0x0002);
	FUNC5(tp, 0x1f, 0x0000);
	FUNC4(tp, 0x14, 0x8000, 0x0000);

	/* improve 10M EEE waveform */
	FUNC5(tp, 0x1f, 0x0005);
	FUNC5(tp, 0x05, 0x8b86);
	FUNC4(tp, 0x06, 0x0001, 0x0000);
	FUNC5(tp, 0x1f, 0x0000);

	/* Improve 2-pair detection performance */
	FUNC5(tp, 0x1f, 0x0005);
	FUNC5(tp, 0x05, 0x8b85);
	FUNC4(tp, 0x06, 0x4000, 0x0000);
	FUNC5(tp, 0x1f, 0x0000);

	FUNC0(tp);
	FUNC2(tp);

	/* Green feature */
	FUNC5(tp, 0x1f, 0x0003);
	FUNC4(tp, 0x19, 0x0001, 0x0000);
	FUNC4(tp, 0x10, 0x0400, 0x0000);
	FUNC5(tp, 0x1f, 0x0000);
	FUNC5(tp, 0x1f, 0x0005);
	FUNC4(tp, 0x01, 0x0100, 0x0000);
	FUNC5(tp, 0x1f, 0x0000);

	/* Broken BIOS workaround: feed GigaMAC registers with MAC address. */
	FUNC3(tp, tp->dev->dev_addr);
}