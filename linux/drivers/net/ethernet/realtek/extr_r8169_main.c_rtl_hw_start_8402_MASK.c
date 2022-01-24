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
struct ephy_info {int member_0; int member_1; int member_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  FuncEvent ; 
 int /*<<< orphan*/  MCU ; 
 int NOW_IS_OOB ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC12(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8402[] = {
		{ 0x19,	0xffff, 0xff64 },
		{ 0x1e,	0, 0x4000 }
	};

	FUNC8(tp);

	/* Force LAN exit from ASPM if Rx/Tx are not idle */
	FUNC2(tp, FuncEvent, FUNC0(tp, FuncEvent) | 0x002800);

	FUNC3(tp, MCU, FUNC1(tp, MCU) & ~NOW_IS_OOB);

	FUNC4(tp, e_info_8402);

	FUNC10(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC9(tp, 0x00, 0x00, 0x02, 0x06);
	FUNC7(tp);
	FUNC5(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
	FUNC5(tp, 0xb8, ERIAR_MASK_0011, 0x0000);
	FUNC11(tp, 0x0d4, ERIAR_MASK_0011, 0x0e00, 0xff00);

	FUNC6(tp);
}