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
struct rtl8169_private {int /*<<< orphan*/  ocp_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ChipCmd ; 
 int CmdRxEnb ; 
 int CmdTxEnb ; 
 int /*<<< orphan*/  MCU ; 
 int /*<<< orphan*/  MISC ; 
 int NOW_IS_OOB ; 
 int /*<<< orphan*/  OCP_STD_PHY_BASE ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int RXDV_GATED_EN ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  rtl_link_list_ready_cond ; 
 int /*<<< orphan*/  rtl_rxtx_empty_cond ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC9(struct rtl8169_private *tp)
{
	tp->ocp_base = OCP_STD_PHY_BASE;

	FUNC3(tp, MISC, FUNC1(tp, MISC) | RXDV_GATED_EN);

	if (!FUNC8(tp, &rtl_rxtx_empty_cond, 100, 42))
		return;

	FUNC4(tp, ChipCmd, FUNC2(tp, ChipCmd) & ~(CmdTxEnb | CmdRxEnb));
	FUNC5(1);
	FUNC4(tp, MCU, FUNC2(tp, MCU) & ~NOW_IS_OOB);

	FUNC6(tp, 0xe8de, FUNC0(14), 0);

	if (!FUNC8(tp, &rtl_link_list_ready_cond, 100, 42))
		return;

	FUNC7(tp, 0xc0aa, 0x07d0);
	FUNC7(tp, 0xc0a6, 0x0150);
	FUNC7(tp, 0xc01e, 0x5555);

	FUNC8(tp, &rtl_link_list_ready_cond, 100, 42);
}