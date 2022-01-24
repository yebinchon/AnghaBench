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
struct ath_hw {scalar_t__ is_clk_25mhz; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CH0_BB_DPLL1 ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL1_NFRAC ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL1_NINI ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL1_REFDIV ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL2 ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL2_EN_NEGTRIG ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL2_LOCAL_PLL ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL2_OUTDIV ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL2_PLL_PWD ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL3 ; 
 int /*<<< orphan*/  AR_CH0_BB_DPLL3_PHASE_SHIFT ; 
 int AR_CH0_DDR_DPLL2 ; 
 int /*<<< orphan*/  AR_CH0_DDR_DPLL3 ; 
 int /*<<< orphan*/  AR_CH0_DPLL2_KD ; 
 int /*<<< orphan*/  AR_CH0_DPLL2_KI ; 
 int /*<<< orphan*/  AR_CH0_DPLL3_PHASE_SHIFT ; 
 int AR_PHY_PLL_CONTROL ; 
 int AR_PHY_PLL_MODE ; 
 int AR_RTC_9300_PLL_BYPASS ; 
 int AR_RTC_9300_SOC_PLL_BYPASS ; 
 int AR_RTC_FORCE_DERIVED_CLK ; 
 int AR_RTC_PLL_CONTROL ; 
 int AR_RTC_PLL_CONTROL2 ; 
 int AR_RTC_SLEEP_CLK ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 int FUNC8 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int,int) ; 
 int RTC_PLL_SETTLE_DELAY ; 
 int FUNC12 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ath_hw *ah,
			      struct ath9k_channel *chan)
{
	u32 pll;

	pll = FUNC12(ah, chan);

	if (FUNC3(ah) || FUNC7(ah)) {
		/* program BB PLL ki and kd value, ki=0x4, kd=0x40 */
		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_BB_DPLL2_PLL_PWD, 0x1);
		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_DPLL2_KD, 0x40);
		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_DPLL2_KI, 0x4);

		FUNC9(ah, AR_CH0_BB_DPLL1,
			      AR_CH0_BB_DPLL1_REFDIV, 0x5);
		FUNC9(ah, AR_CH0_BB_DPLL1,
			      AR_CH0_BB_DPLL1_NINI, 0x58);
		FUNC9(ah, AR_CH0_BB_DPLL1,
			      AR_CH0_BB_DPLL1_NFRAC, 0x0);

		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_BB_DPLL2_OUTDIV, 0x1);
		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_BB_DPLL2_LOCAL_PLL, 0x1);
		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_BB_DPLL2_EN_NEGTRIG, 0x1);

		/* program BB PLL phase_shift to 0x6 */
		FUNC9(ah, AR_CH0_BB_DPLL3,
			      AR_CH0_BB_DPLL3_PHASE_SHIFT, 0x6);

		FUNC9(ah, AR_CH0_BB_DPLL2,
			      AR_CH0_BB_DPLL2_PLL_PWD, 0x0);
		FUNC13(1000);
	} else if (FUNC1(ah)) {
		u32 ddr_dpll2, pll_control2, kd;

		if (ah->is_clk_25mhz) {
			ddr_dpll2 = 0x18e82f01;
			pll_control2 = 0xe04a3d;
			kd = 0x1d;
		} else {
			ddr_dpll2 = 0x19e82f01;
			pll_control2 = 0x886666;
			kd = 0x3d;
		}

		/* program DDR PLL ki and kd value */
		FUNC11(ah, AR_CH0_DDR_DPLL2, ddr_dpll2);

		/* program DDR PLL phase_shift */
		FUNC9(ah, AR_CH0_DDR_DPLL3,
			      AR_CH0_DPLL3_PHASE_SHIFT, 0x1);

		FUNC11(ah, AR_RTC_PLL_CONTROL,
			  pll | AR_RTC_9300_PLL_BYPASS);
		FUNC13(1000);

		/* program refdiv, nint, frac to RTC register */
		FUNC11(ah, AR_RTC_PLL_CONTROL2, pll_control2);

		/* program BB PLL kd and ki value */
		FUNC9(ah, AR_CH0_BB_DPLL2, AR_CH0_DPLL2_KD, kd);
		FUNC9(ah, AR_CH0_BB_DPLL2, AR_CH0_DPLL2_KI, 0x06);

		/* program BB PLL phase_shift */
		FUNC9(ah, AR_CH0_BB_DPLL3,
			      AR_CH0_BB_DPLL3_PHASE_SHIFT, 0x1);
	} else if (FUNC2(ah) || FUNC5(ah) || FUNC4(ah) ||
		   FUNC6(ah)) {
		u32 regval, pll2_divint, pll2_divfrac, refdiv;

		FUNC11(ah, AR_RTC_PLL_CONTROL,
			  pll | AR_RTC_9300_SOC_PLL_BYPASS);
		FUNC13(1000);

		FUNC10(ah, AR_PHY_PLL_MODE, 0x1 << 16);
		FUNC13(100);

		if (ah->is_clk_25mhz) {
			if (FUNC4(ah) || FUNC6(ah)) {
				pll2_divint = 0x1c;
				pll2_divfrac = 0xa3d2;
				refdiv = 1;
			} else {
				pll2_divint = 0x54;
				pll2_divfrac = 0x1eb85;
				refdiv = 3;
			}
		} else {
			if (FUNC2(ah)) {
				pll2_divint = 88;
				pll2_divfrac = 0;
				refdiv = 5;
			} else {
				pll2_divint = 0x11;
				pll2_divfrac = (FUNC4(ah) ||
						FUNC6(ah)) ?
						0x26665 : 0x26666;
				refdiv = 1;
			}
		}

		regval = FUNC8(ah, AR_PHY_PLL_MODE);
		if (FUNC4(ah) || FUNC6(ah))
			regval |= (0x1 << 22);
		else
			regval |= (0x1 << 16);
		FUNC11(ah, AR_PHY_PLL_MODE, regval);
		FUNC13(100);

		FUNC11(ah, AR_PHY_PLL_CONTROL, (refdiv << 27) |
			  (pll2_divint << 18) | pll2_divfrac);
		FUNC13(100);

		regval = FUNC8(ah, AR_PHY_PLL_MODE);
		if (FUNC2(ah))
			regval = (regval & 0x80071fff) |
				(0x1 << 30) |
				(0x1 << 13) |
				(0x4 << 26) |
				(0x18 << 19);
		else if (FUNC4(ah) || FUNC6(ah)) {
			regval = (regval & 0x01c00fff) |
				(0x1 << 31) |
				(0x2 << 29) |
				(0xa << 25) |
				(0x1 << 19);

			if (FUNC4(ah))
				regval |= (0x6 << 12);
		} else
			regval = (regval & 0x80071fff) |
				(0x3 << 30) |
				(0x1 << 13) |
				(0x4 << 26) |
				(0x60 << 19);
		FUNC11(ah, AR_PHY_PLL_MODE, regval);

		if (FUNC4(ah) || FUNC6(ah))
			FUNC11(ah, AR_PHY_PLL_MODE,
				  FUNC8(ah, AR_PHY_PLL_MODE) & 0xffbfffff);
		else
			FUNC11(ah, AR_PHY_PLL_MODE,
				  FUNC8(ah, AR_PHY_PLL_MODE) & 0xfffeffff);

		FUNC13(1000);
	}

	if (FUNC7(ah))
		pll |= 0x40000;
	FUNC11(ah, AR_RTC_PLL_CONTROL, pll);

	if (FUNC3(ah) || FUNC2(ah) || FUNC1(ah) ||
	    FUNC5(ah))
		FUNC13(1000);

	/* Switch the core clock for ar9271 to 117Mhz */
	if (FUNC0(ah)) {
		FUNC13(500);
		FUNC11(ah, 0x50040, 0x304);
	}

	FUNC13(RTC_PLL_SETTLE_DELAY);

	FUNC11(ah, AR_RTC_SLEEP_CLK, AR_RTC_FORCE_DERIVED_CLK);
}