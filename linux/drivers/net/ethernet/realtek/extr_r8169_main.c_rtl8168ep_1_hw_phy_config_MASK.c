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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC8(struct rtl8169_private *tp)
{
	/* Enable PHY auto speed down */
	FUNC1(tp->phydev, 0x0a44, 0x11, 0, FUNC0(3) | FUNC0(2));

	FUNC4(tp);

	/* Enable EEE auto-fallback function */
	FUNC1(tp->phydev, 0x0a4b, 0x11, 0, FUNC0(2));

	/* Enable UC LPF tune function */
	FUNC7(tp, 0x1f, 0x0a43);
	FUNC7(tp, 0x13, 0x8012);
	FUNC6(tp, 0x14, 0x8000, 0x0000);
	FUNC7(tp, 0x1f, 0x0000);

	/* set rg_sel_sdm_rate */
	FUNC1(tp->phydev, 0x0c42, 0x11, FUNC0(13), FUNC0(14));

	FUNC3(tp);
	FUNC2(tp);
	FUNC5(tp);
}