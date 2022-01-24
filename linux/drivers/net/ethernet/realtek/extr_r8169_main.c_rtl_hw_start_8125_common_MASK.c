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

/* Variables and functions */
 int Config1 ; 
 int /*<<< orphan*/  MISC ; 
 int FUNC0 (struct rtl8169_private*,int) ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int) ; 
 int RXDV_GATED_EN ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  rtl_mac_ocp_e00e_cond ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct rtl8169_private *tp)
{
	FUNC9(tp);

	FUNC3(tp, 0x382, 0x221b);
	FUNC5(tp, 0x4500, 0);
	FUNC3(tp, 0x4800, 0);

	/* disable UPS */
	FUNC6(tp, 0xd40a, 0x0010, 0x0000);

	FUNC5(tp, Config1, FUNC2(tp, Config1) & ~0x10);

	FUNC7(tp, 0xc140, 0xffff);
	FUNC7(tp, 0xc142, 0xffff);

	FUNC6(tp, 0xd3e2, 0x0fff, 0x03a9);
	FUNC6(tp, 0xd3e4, 0x00ff, 0x0000);
	FUNC6(tp, 0xe860, 0x0000, 0x0080);

	/* disable new tx descriptor format */
	FUNC6(tp, 0xeb58, 0x0001, 0x0000);

	FUNC6(tp, 0xe614, 0x0700, 0x0400);
	FUNC6(tp, 0xe63e, 0x0c30, 0x0020);
	FUNC6(tp, 0xc0b4, 0x0000, 0x000c);
	FUNC6(tp, 0xeb6a, 0x00ff, 0x0033);
	FUNC6(tp, 0xeb50, 0x03e0, 0x0040);
	FUNC6(tp, 0xe056, 0x00f0, 0x0030);
	FUNC6(tp, 0xe040, 0x1000, 0x0000);
	FUNC6(tp, 0xe0c0, 0x4f0f, 0x4403);
	FUNC6(tp, 0xe052, 0x0080, 0x0067);
	FUNC6(tp, 0xc0ac, 0x0080, 0x1f00);
	FUNC6(tp, 0xd430, 0x0fff, 0x047f);
	FUNC6(tp, 0xe84c, 0x0000, 0x00c0);
	FUNC6(tp, 0xea1c, 0x0004, 0x0000);
	FUNC6(tp, 0xeb54, 0x0000, 0x0001);
	FUNC11(1);
	FUNC6(tp, 0xeb54, 0x0001, 0x0000);
	FUNC3(tp, 0x1880, FUNC0(tp, 0x1880) & ~0x0030);

	FUNC7(tp, 0xe098, 0xc302);

	FUNC10(tp, &rtl_mac_ocp_e00e_cond, 1000, 10);

	FUNC8(tp);

	FUNC4(tp, MISC, FUNC1(tp, MISC) & ~RXDV_GATED_EN);
	FUNC11(10);
}