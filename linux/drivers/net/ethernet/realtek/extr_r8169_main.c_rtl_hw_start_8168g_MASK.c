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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERIAR_MASK_0001 ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  MISC ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int RXDV_GATED_EN ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC13(struct rtl8169_private *tp)
{
	FUNC10(tp, 0x08, 0x10, 0x02, 0x06);
	FUNC4(tp, 0x38, 0x48);

	FUNC9(tp);

	FUNC11(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC8(tp);
	FUNC6(tp, 0x2f8, ERIAR_MASK_0011, 0x1d8f);

	FUNC2(tp, MISC, FUNC1(tp, MISC) & ~RXDV_GATED_EN);

	FUNC6(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
	FUNC6(tp, 0xb8, ERIAR_MASK_0011, 0x0000);

	FUNC3(tp);

	FUNC12(tp, 0x2fc, ERIAR_MASK_0001, 0x01, 0x06);
	FUNC5(tp, 0x1b0, ERIAR_MASK_0011, FUNC0(12));

	FUNC7(tp);
}