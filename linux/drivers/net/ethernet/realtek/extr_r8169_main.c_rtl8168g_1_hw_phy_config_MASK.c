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
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC10(struct rtl8169_private *tp)
{
	int ret;

	FUNC6(tp);

	ret = FUNC2(tp->phydev, 0x0a46, 0x10);
	if (ret & FUNC0(8))
		FUNC1(tp->phydev, 0x0bcc, 0x12, FUNC0(15), 0);
	else
		FUNC1(tp->phydev, 0x0bcc, 0x12, 0, FUNC0(15));

	ret = FUNC2(tp->phydev, 0x0a46, 0x13);
	if (ret & FUNC0(8))
		FUNC1(tp->phydev, 0x0c41, 0x15, 0, FUNC0(1));
	else
		FUNC1(tp->phydev, 0x0c41, 0x15, FUNC0(1), 0);

	/* Enable PHY auto speed down */
	FUNC1(tp->phydev, 0x0a44, 0x11, 0, FUNC0(3) | FUNC0(2));

	FUNC5(tp);

	/* EEE auto-fallback function */
	FUNC1(tp->phydev, 0x0a4b, 0x11, 0, FUNC0(2));

	/* Enable UC LPF tune function */
	FUNC9(tp, 0x1f, 0x0a43);
	FUNC9(tp, 0x13, 0x8012);
	FUNC8(tp, 0x14, 0x8000, 0x0000);

	FUNC1(tp->phydev, 0x0c42, 0x11, FUNC0(13), FUNC0(14));

	/* Improve SWR Efficiency */
	FUNC9(tp, 0x1f, 0x0bcd);
	FUNC9(tp, 0x14, 0x5065);
	FUNC9(tp, 0x14, 0xd065);
	FUNC9(tp, 0x1f, 0x0bc8);
	FUNC9(tp, 0x11, 0x5655);
	FUNC9(tp, 0x1f, 0x0bcd);
	FUNC9(tp, 0x14, 0x1065);
	FUNC9(tp, 0x14, 0x9065);
	FUNC9(tp, 0x14, 0x1065);
	FUNC9(tp, 0x1f, 0x0000);

	FUNC4(tp);
	FUNC3(tp);
	FUNC7(tp);
}