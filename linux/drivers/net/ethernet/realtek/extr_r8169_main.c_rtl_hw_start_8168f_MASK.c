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
 int /*<<< orphan*/  Config5 ; 
 int /*<<< orphan*/  DLLPR ; 
 int /*<<< orphan*/  ERIAR_MASK_0001 ; 
 int /*<<< orphan*/  ERIAR_MASK_0011 ; 
 int /*<<< orphan*/  ERIAR_MASK_1111 ; 
 int /*<<< orphan*/  MCU ; 
 int /*<<< orphan*/  MISC ; 
 int NOW_IS_OOB ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int PFM_EN ; 
 int PWM_EN ; 
 int FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int Spi_en ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct rtl8169_private *tp)
{
	FUNC10(tp);

	FUNC12(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC8(tp, 0xc0, ERIAR_MASK_0011, 0x0000);
	FUNC8(tp, 0xb8, ERIAR_MASK_0011, 0x0000);
	FUNC11(tp, 0x10, 0x10, 0x02, 0x06);
	FUNC9(tp);
	FUNC7(tp, 0x1b0, ERIAR_MASK_0001, FUNC0(4));
	FUNC7(tp, 0x1d0, ERIAR_MASK_0001, FUNC0(4));
	FUNC8(tp, 0xcc, ERIAR_MASK_1111, 0x00000050);
	FUNC8(tp, 0xd0, ERIAR_MASK_1111, 0x00000060);

	FUNC6(tp);

	FUNC4(tp, MCU, FUNC2(tp, MCU) & ~NOW_IS_OOB);
	FUNC4(tp, DLLPR, FUNC2(tp, DLLPR) | PFM_EN);
	FUNC3(tp, MISC, FUNC1(tp, MISC) | PWM_EN);
	FUNC4(tp, Config5, FUNC2(tp, Config5) & ~Spi_en);

	FUNC5(tp);
}