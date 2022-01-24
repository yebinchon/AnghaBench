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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Config5 ; 
 int /*<<< orphan*/  DLLPR ; 
 int /*<<< orphan*/  ERIAR_MASK_0001 ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  ERIAR_MASK_1111 ; 
 int /*<<< orphan*/  MCU ; 
 int /*<<< orphan*/  MISC ; 
 int NOW_IS_OOB ; 
 int PFM_EN ; 
 int PWM_EN ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int Spi_en ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl8169_private*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC14(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168e_2[] = {
		{ 0x09, 0x0000,	0x0080 },
		{ 0x19, 0x0000,	0x0224 },
		{ 0x00, 0x0000,	0x0004 },
		{ 0x0c, 0x3df0,	0x0200 },
	};

	FUNC11(tp);

	FUNC7(tp, e_info_8168e_2);

	FUNC9(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
	FUNC9(tp, 0xb8, ERIAR_MASK_0011, 0x0000);
	FUNC12(tp, 0x10, 0x10, 0x02, 0x06);
	FUNC9(tp, 0xcc, ERIAR_MASK_1111, 0x00000050);
	FUNC9(tp, 0xd0, ERIAR_MASK_1111, 0x07ff0060);
	FUNC8(tp, 0x1b0, ERIAR_MASK_0001, FUNC0(4));
	FUNC13(tp, 0x0d4, ERIAR_MASK_0011, 0x0c00, 0xff00);

	FUNC6(tp);

	FUNC4(tp, MCU, FUNC2(tp, MCU) & ~NOW_IS_OOB);

	FUNC5(tp);

	FUNC4(tp, DLLPR, FUNC2(tp, DLLPR) | PFM_EN);
	FUNC3(tp, MISC, FUNC1(tp, MISC) | PWM_EN);
	FUNC4(tp, Config5, FUNC2(tp, Config5) & ~Spi_en);

	FUNC10(tp, true);
}