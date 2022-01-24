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
 int /*<<< orphan*/  DLLPR ; 
 int /*<<< orphan*/  ERIAR_MASK_0001 ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  ERIAR_MASK_1111 ; 
 int /*<<< orphan*/  MISC ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int RXDV_GATED_EN ; 
 int TX_10M_PS_EN ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl8169_private*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC15(struct rtl8169_private *tp)
{
	FUNC5(tp);

	FUNC12(tp, 0x08, 0x10, 0x02, 0x06);
	FUNC6(tp, 0x2f, 0x5f);

	FUNC11(tp);

	FUNC13(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC10(tp);

	FUNC7(tp, 0xd4, ERIAR_MASK_1111, 0x1f80);

	FUNC8(tp, 0x5f0, ERIAR_MASK_0011, 0x4f87);

	FUNC2(tp, MISC, FUNC0(tp, MISC) & ~RXDV_GATED_EN);

	FUNC8(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
	FUNC8(tp, 0xb8, ERIAR_MASK_0011, 0x0000);

	FUNC4(tp);

	FUNC14(tp, 0x2fc, ERIAR_MASK_0001, 0x01, 0x06);

	FUNC3(tp, DLLPR, FUNC1(tp, DLLPR) & ~TX_10M_PS_EN);

	FUNC9(tp);
}