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
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int /*<<< orphan*/  is_pciexpress; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_WA ; 
 int /*<<< orphan*/  AR_WA_POR_SHORT ; 
 int /*<<< orphan*/  AR_WA_RESET_EN ; 
 int /*<<< orphan*/  AR_WA_UNTIE_RESET_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah)
{
	u32 wa_reg;

	if (!ah->is_pciexpress)
		return;

	/*
	 * We need to untie the internal POR (power-on-reset)
	 * to the external PCI-E reset. We also need to tie
	 * the PCI-E Phy reset to the PCI-E reset.
	 */
	wa_reg = FUNC0(ah, AR_WA);
	wa_reg &= ~AR_WA_UNTIE_RESET_EN;
	wa_reg |= AR_WA_RESET_EN;
	wa_reg |= AR_WA_POR_SHORT;

	FUNC1(ah, AR_WA, wa_reg);
}