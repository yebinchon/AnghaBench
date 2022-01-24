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
typedef  int u16 ;
struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DLLPR ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  ERIAR_MASK_1111 ; 
 int /*<<< orphan*/  MISC ; 
 int /*<<< orphan*/  MISC_1 ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int PFM_D3COLD_EN ; 
 int PFM_EN ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int RXDV_GATED_EN ; 
 int TX_10M_PS_EN ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rtl8169_private*) ; 
 int FUNC15 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtl8169_private*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC21(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168h_1[] = {
		{ 0x1e, 0x0800,	0x0001 },
		{ 0x1d, 0x0000,	0x0800 },
		{ 0x05, 0xffff,	0x2089 },
		{ 0x06, 0xffff,	0x5881 },
		{ 0x04, 0xffff,	0x854a },
		{ 0x01, 0xffff,	0x068b }
	};
	int rg_saw_cnt;

	/* disable aspm and clock request before access ephy */
	FUNC13(tp, false);
	FUNC9(tp, e_info_8168h_1);

	FUNC18(tp, 0x08, 0x10, 0x02, 0x06);
	FUNC8(tp, 0x38, 0x48);

	FUNC17(tp);

	FUNC19(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC16(tp);

	FUNC11(tp, 0xdc, ERIAR_MASK_1111, FUNC0(4));

	FUNC11(tp, 0xd4, ERIAR_MASK_1111, 0x1f00);

	FUNC12(tp, 0x5f0, ERIAR_MASK_0011, 0x4f87);

	FUNC3(tp, MISC, FUNC1(tp, MISC) & ~RXDV_GATED_EN);

	FUNC12(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
	FUNC12(tp, 0xb8, ERIAR_MASK_0011, 0x0000);

	FUNC7(tp);

	FUNC4(tp, DLLPR, FUNC2(tp, DLLPR) & ~PFM_EN);
	FUNC4(tp, MISC_1, FUNC2(tp, MISC_1) & ~PFM_D3COLD_EN);

	FUNC4(tp, DLLPR, FUNC2(tp, DLLPR) & ~TX_10M_PS_EN);

	FUNC10(tp, 0x1b0, ERIAR_MASK_0011, FUNC0(12));

	FUNC14(tp);

	FUNC20(tp, 0x1f, 0x0c42);
	rg_saw_cnt = (FUNC15(tp, 0x13) & 0x3fff);
	FUNC20(tp, 0x1f, 0x0000);
	if (rg_saw_cnt > 0) {
		u16 sw_cnt_1ms_ini;

		sw_cnt_1ms_ini = 16000000/rg_saw_cnt;
		sw_cnt_1ms_ini &= 0x0fff;
		FUNC5(tp, 0xd412, 0x0fff, sw_cnt_1ms_ini);
	}

	FUNC5(tp, 0xe056, 0x00f0, 0x0070);
	FUNC5(tp, 0xe052, 0x6000, 0x8008);
	FUNC5(tp, 0xe0d6, 0x01ff, 0x017f);
	FUNC5(tp, 0xd420, 0x0fff, 0x047f);

	FUNC6(tp, 0xe63e, 0x0001);
	FUNC6(tp, 0xe63e, 0x0000);
	FUNC6(tp, 0xc094, 0x0000);
	FUNC6(tp, 0xc09e, 0x0000);

	FUNC13(tp, true);
}