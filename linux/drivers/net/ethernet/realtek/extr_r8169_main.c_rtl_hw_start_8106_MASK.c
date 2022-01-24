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
 int DISABLE_LAN_EN ; 
 int /*<<< orphan*/  DLLPR ; 
 int EARLY_TALLY_EN ; 
 int EN_NDP ; 
 int EN_OOB_RESET ; 
 int /*<<< orphan*/  FuncEvent ; 
 int /*<<< orphan*/  MCU ; 
 int /*<<< orphan*/  MISC ; 
 int PFM_EN ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp)
{
	FUNC4(tp, false);

	/* Force LAN exit from ASPM if Rx/Tx are not idle */
	FUNC2(tp, FuncEvent, FUNC0(tp, FuncEvent) | 0x002800);

	FUNC2(tp, MISC, (FUNC0(tp, MISC) | DISABLE_LAN_EN) & ~EARLY_TALLY_EN);
	FUNC3(tp, MCU, FUNC1(tp, MCU) | EN_NDP | EN_OOB_RESET);
	FUNC3(tp, DLLPR, FUNC1(tp, DLLPR) & ~PFM_EN);

	FUNC5(tp);
	FUNC4(tp, true);
}