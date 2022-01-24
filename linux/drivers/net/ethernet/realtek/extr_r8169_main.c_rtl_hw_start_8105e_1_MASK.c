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
struct ephy_info {int member_0; int member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLLPR ; 
 int EN_NDP ; 
 int EN_OOB_RESET ; 
 int /*<<< orphan*/  FuncEvent ; 
 int /*<<< orphan*/  MCU ; 
 int PFM_EN ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8105e_1[] = {
		{ 0x07,	0, 0x4000 },
		{ 0x19,	0, 0x0200 },
		{ 0x19,	0, 0x0020 },
		{ 0x1e,	0, 0x2000 },
		{ 0x03,	0, 0x0001 },
		{ 0x19,	0, 0x0100 },
		{ 0x19,	0, 0x0004 },
		{ 0x0a,	0, 0x0020 }
	};

	/* Force LAN exit from ASPM if Rx/Tx are not idle */
	FUNC2(tp, FuncEvent, FUNC0(tp, FuncEvent) | 0x002800);

	/* Disable Early Tally Counter */
	FUNC2(tp, FuncEvent, FUNC0(tp, FuncEvent) & ~0x010000);

	FUNC3(tp, MCU, FUNC1(tp, MCU) | EN_NDP | EN_OOB_RESET);
	FUNC3(tp, DLLPR, FUNC1(tp, DLLPR) | PFM_EN);

	FUNC4(tp, e_info_8105e_1);

	FUNC5(tp);
}