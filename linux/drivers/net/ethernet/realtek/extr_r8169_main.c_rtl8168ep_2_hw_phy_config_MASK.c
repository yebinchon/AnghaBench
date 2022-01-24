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
struct rtl8169_private {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC8(struct rtl8169_private *tp)
{
	FUNC4(tp);

	/* Enable UC LPF tune function */
	FUNC7(tp, 0x1f, 0x0a43);
	FUNC7(tp, 0x13, 0x8012);
	FUNC6(tp, 0x14, 0x8000, 0x0000);
	FUNC7(tp, 0x1f, 0x0000);

	/* Set rg_sel_sdm_rate */
	FUNC1(tp->phydev, 0x0c42, 0x11, FUNC0(13), FUNC0(14));

	/* Channel estimation parameters */
	FUNC7(tp, 0x1f, 0x0a43);
	FUNC7(tp, 0x13, 0x80f3);
	FUNC6(tp, 0x14, 0x8b00, ~0x8bff);
	FUNC7(tp, 0x13, 0x80f0);
	FUNC6(tp, 0x14, 0x3a00, ~0x3aff);
	FUNC7(tp, 0x13, 0x80ef);
	FUNC6(tp, 0x14, 0x0500, ~0x05ff);
	FUNC7(tp, 0x13, 0x80f6);
	FUNC6(tp, 0x14, 0x6e00, ~0x6eff);
	FUNC7(tp, 0x13, 0x80ec);
	FUNC6(tp, 0x14, 0x6800, ~0x68ff);
	FUNC7(tp, 0x13, 0x80ed);
	FUNC6(tp, 0x14, 0x7c00, ~0x7cff);
	FUNC7(tp, 0x13, 0x80f2);
	FUNC6(tp, 0x14, 0xf400, ~0xf4ff);
	FUNC7(tp, 0x13, 0x80f4);
	FUNC6(tp, 0x14, 0x8500, ~0x85ff);
	FUNC7(tp, 0x1f, 0x0a43);
	FUNC7(tp, 0x13, 0x8110);
	FUNC6(tp, 0x14, 0xa800, ~0xa8ff);
	FUNC7(tp, 0x13, 0x810f);
	FUNC6(tp, 0x14, 0x1d00, ~0x1dff);
	FUNC7(tp, 0x13, 0x8111);
	FUNC6(tp, 0x14, 0xf500, ~0xf5ff);
	FUNC7(tp, 0x13, 0x8113);
	FUNC6(tp, 0x14, 0x6100, ~0x61ff);
	FUNC7(tp, 0x13, 0x8115);
	FUNC6(tp, 0x14, 0x9200, ~0x92ff);
	FUNC7(tp, 0x13, 0x810e);
	FUNC6(tp, 0x14, 0x0400, ~0x04ff);
	FUNC7(tp, 0x13, 0x810c);
	FUNC6(tp, 0x14, 0x7c00, ~0x7cff);
	FUNC7(tp, 0x13, 0x810b);
	FUNC6(tp, 0x14, 0x5a00, ~0x5aff);
	FUNC7(tp, 0x1f, 0x0a43);
	FUNC7(tp, 0x13, 0x80d1);
	FUNC6(tp, 0x14, 0xff00, ~0xffff);
	FUNC7(tp, 0x13, 0x80cd);
	FUNC6(tp, 0x14, 0x9e00, ~0x9eff);
	FUNC7(tp, 0x13, 0x80d3);
	FUNC6(tp, 0x14, 0x0e00, ~0x0eff);
	FUNC7(tp, 0x13, 0x80d5);
	FUNC6(tp, 0x14, 0xca00, ~0xcaff);
	FUNC7(tp, 0x13, 0x80d7);
	FUNC6(tp, 0x14, 0x8400, ~0x84ff);

	/* Force PWM-mode */
	FUNC7(tp, 0x1f, 0x0bcd);
	FUNC7(tp, 0x14, 0x5065);
	FUNC7(tp, 0x14, 0xd065);
	FUNC7(tp, 0x1f, 0x0bc8);
	FUNC7(tp, 0x12, 0x00ed);
	FUNC7(tp, 0x1f, 0x0bcd);
	FUNC7(tp, 0x14, 0x1065);
	FUNC7(tp, 0x14, 0x9065);
	FUNC7(tp, 0x14, 0x1065);
	FUNC7(tp, 0x1f, 0x0000);

	FUNC3(tp);
	FUNC2(tp);
	FUNC5(tp);
}