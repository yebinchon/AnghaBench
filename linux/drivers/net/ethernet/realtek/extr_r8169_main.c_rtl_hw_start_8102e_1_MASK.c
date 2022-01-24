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
typedef  int u8 ;
struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int Beacon_en ; 
 int /*<<< orphan*/  Config1 ; 
 int /*<<< orphan*/  Config3 ; 
 int /*<<< orphan*/  DBG_REG ; 
 int FIX_NAK_1 ; 
 int IOMAP ; 
 int LEDS0 ; 
 int LEDS1 ; 
 int MEMMAP ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int PMEnable ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int Speed_down ; 
 int VPD ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8102e_1[] = {
		{ 0x01,	0, 0x6e65 },
		{ 0x02,	0, 0x091f },
		{ 0x03,	0, 0xc2f9 },
		{ 0x06,	0, 0xafb5 },
		{ 0x07,	0, 0x0e00 },
		{ 0x19,	0, 0xec80 },
		{ 0x01,	0, 0x2e65 },
		{ 0x01,	0, 0x6e65 }
	};
	u8 cfg1;

	FUNC3(tp);

	FUNC1(tp, DBG_REG, FIX_NAK_1);

	FUNC4(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC1(tp, Config1,
	       LEDS1 | LEDS0 | Speed_down | MEMMAP | IOMAP | VPD | PMEnable);
	FUNC1(tp, Config3, FUNC0(tp, Config3) & ~Beacon_en);

	cfg1 = FUNC0(tp, Config1);
	if ((cfg1 & LEDS0) && (cfg1 & LEDS1))
		FUNC1(tp, Config1, cfg1 & ~LEDS0);

	FUNC2(tp, e_info_8102e_1);
}