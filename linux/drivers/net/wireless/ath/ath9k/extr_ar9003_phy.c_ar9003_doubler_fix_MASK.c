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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_65NM_CH0_RXTX2 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK ; 
 int AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S ; 
 int AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_SYNTH12 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_SYNTH12_VREFMUL3 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH1_RXTX2 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH2_RXTX2 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah)
{
	if (FUNC0(ah) || FUNC2(ah) || FUNC1(ah)) {
		FUNC4(ah, AR_PHY_65NM_CH0_RXTX2,
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, 0);
		FUNC4(ah, AR_PHY_65NM_CH1_RXTX2,
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, 0);
		FUNC4(ah, AR_PHY_65NM_CH2_RXTX2,
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, 0);

		FUNC6(200);

		FUNC3(ah, AR_PHY_65NM_CH0_RXTX2,
			    AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK);
		FUNC3(ah, AR_PHY_65NM_CH1_RXTX2,
			    AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK);
		FUNC3(ah, AR_PHY_65NM_CH2_RXTX2,
			    AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK);

		FUNC6(1);

		FUNC5(ah, AR_PHY_65NM_CH0_RXTX2,
			      AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, 1);
		FUNC5(ah, AR_PHY_65NM_CH1_RXTX2,
			      AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, 1);
		FUNC5(ah, AR_PHY_65NM_CH2_RXTX2,
			      AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, 1);

		FUNC6(200);

		FUNC5(ah, AR_PHY_65NM_CH0_SYNTH12,
			      AR_PHY_65NM_CH0_SYNTH12_VREFMUL3, 0xf);

		FUNC4(ah, AR_PHY_65NM_CH0_RXTX2, 0,
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S);
		FUNC4(ah, AR_PHY_65NM_CH1_RXTX2, 0,
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S);
		FUNC4(ah, AR_PHY_65NM_CH2_RXTX2, 0,
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
			1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S);
	}
}