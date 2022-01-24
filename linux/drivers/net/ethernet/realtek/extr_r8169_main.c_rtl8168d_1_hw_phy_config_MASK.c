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
typedef  int u32 ;
struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  MII_EXPANSION ; 
 struct phy_reg const* rtl8168d_1_phy_reg_init_0 ; 
 struct phy_reg const* rtl8168d_1_phy_reg_init_1 ; 
 int FUNC1 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 
 int FUNC4 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,struct phy_reg const*) ; 

__attribute__((used)) static void FUNC8(struct rtl8169_private *tp)
{
	FUNC7(tp, rtl8168d_1_phy_reg_init_0);

	/*
	 * Rx Error Issue
	 * Fine Tune Switching regulator parameter
	 */
	FUNC6(tp, 0x1f, 0x0002);
	FUNC5(tp, 0x0b, 0x0010, 0x00ef);
	FUNC5(tp, 0x0c, 0xa200, 0x5d00);

	if (FUNC1(tp, 0x01) == 0xb1) {
		int val;

		FUNC7(tp, rtl8168d_1_phy_reg_init_1);

		val = FUNC4(tp, 0x0d);

		if ((val & 0x00ff) != 0x006c) {
			static const u32 set[] = {
				0x0065, 0x0066, 0x0067, 0x0068,
				0x0069, 0x006a, 0x006b, 0x006c
			};
			int i;

			FUNC6(tp, 0x1f, 0x0002);

			val &= 0xff00;
			for (i = 0; i < FUNC0(set); i++)
				FUNC6(tp, 0x0d, val | set[i]);
		}
	} else {
		static const struct phy_reg phy_reg_init[] = {
			{ 0x1f, 0x0002 },
			{ 0x05, 0x6662 },
			{ 0x1f, 0x0005 },
			{ 0x05, 0x8330 },
			{ 0x06, 0x6662 }
		};

		FUNC7(tp, phy_reg_init);
	}

	/* RSET couple improve */
	FUNC6(tp, 0x1f, 0x0002);
	FUNC3(tp, 0x0d, 0x0300);
	FUNC3(tp, 0x0f, 0x0010);

	/* Fine tune PLL performance */
	FUNC6(tp, 0x1f, 0x0002);
	FUNC5(tp, 0x02, 0x0100, 0x0600);
	FUNC5(tp, 0x03, 0x0000, 0xe000);

	FUNC6(tp, 0x1f, 0x0005);
	FUNC6(tp, 0x05, 0x001b);

	FUNC2(tp, MII_EXPANSION, 0xbf00);

	FUNC6(tp, 0x1f, 0x0000);
}