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
struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,struct phy_reg const*) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	static const struct phy_reg phy_reg_init[] = {
		/* Channel estimation fine tune */
		{ 0x1f, 0x0003 },
		{ 0x09, 0xa20f },
		{ 0x1f, 0x0000 },

		/* Modify green table for giga & fnet */
		{ 0x1f, 0x0005 },
		{ 0x05, 0x8b55 },
		{ 0x06, 0x0000 },
		{ 0x05, 0x8b5e },
		{ 0x06, 0x0000 },
		{ 0x05, 0x8b67 },
		{ 0x06, 0x0000 },
		{ 0x05, 0x8b70 },
		{ 0x06, 0x0000 },
		{ 0x1f, 0x0000 },
		{ 0x1f, 0x0007 },
		{ 0x1e, 0x0078 },
		{ 0x17, 0x0000 },
		{ 0x19, 0x00fb },
		{ 0x1f, 0x0000 },

		/* Modify green table for 10M */
		{ 0x1f, 0x0005 },
		{ 0x05, 0x8b79 },
		{ 0x06, 0xaa00 },
		{ 0x1f, 0x0000 },

		/* Disable hiimpedance detection (RTCT) */
		{ 0x1f, 0x0003 },
		{ 0x01, 0x328a },
		{ 0x1f, 0x0000 }
	};

	FUNC1(tp);

	FUNC4(tp, phy_reg_init);

	FUNC0(tp);

	/* Improve 2-pair detection performance */
	FUNC3(tp, 0x1f, 0x0005);
	FUNC3(tp, 0x05, 0x8b85);
	FUNC2(tp, 0x06, 0x4000, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);
}