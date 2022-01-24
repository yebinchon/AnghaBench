#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtl8169_private {scalar_t__ mac_version; TYPE_1__* dev; int /*<<< orphan*/  cp_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCMD_MASK ; 
 int /*<<< orphan*/  CPlusCmd ; 
 int /*<<< orphan*/  ChipCmd ; 
 int CmdRxEnb ; 
 int CmdTxEnb ; 
 scalar_t__ RTL_GIGA_MAC_VER_06 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 scalar_t__ FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC16(struct  rtl8169_private *tp)
{
	FUNC15(tp);

	tp->cp_cmd &= CPCMD_MASK;
	FUNC1(tp, CPlusCmd, tp->cp_cmd);

	if (tp->mac_version <= RTL_GIGA_MAC_VER_06)
		FUNC5(tp);
	else if (FUNC8(tp))
		FUNC3(tp);
	else
		FUNC4(tp);

	FUNC11(tp);
	FUNC13(tp);
	FUNC10(tp);

	FUNC9(tp, tp->dev->mtu);

	/* Initially a 10 us delay. Turned it into a PCI commit. - FR */
	FUNC0(tp, CPlusCmd);
	FUNC2(tp, ChipCmd, CmdTxEnb | CmdRxEnb);
	FUNC6(tp);
	FUNC14(tp);
	FUNC12(tp->dev);
	FUNC7(tp);
}