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
typedef  int u32 ;
struct ar9300_base_eep_hdr {int featureEnable; int /*<<< orphan*/  swreg; } ;
struct ar9300_eeprom {struct ar9300_base_eep_hdr baseEepHeader; } ;
struct TYPE_2__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {scalar_t__ is_clk_25mhz; TYPE_1__ eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_PMU1 ; 
 int AR_PHY_PMU1_PWD ; 
 int /*<<< orphan*/  AR_PHY_PMU2 ; 
 int AR_PHY_PMU2_PGM ; 
 int AR_RTC_FORCE_SWREG_PRD ; 
 int /*<<< orphan*/  AR_RTC_REG_CONTROL0 ; 
 int /*<<< orphan*/  AR_RTC_REG_CONTROL1 ; 
 int AR_RTC_REG_CONTROL1_SWREG_PROGRAM ; 
 int /*<<< orphan*/  AR_RTC_SLEEP_CLK ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13(struct ath_hw *ah)
{
	struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
	struct ar9300_base_eep_hdr *pBase = &eep->baseEepHeader;
	u32 reg_val;

	if (pBase->featureEnable & FUNC5(4)) {
		if (FUNC0(ah) || FUNC2(ah)) {
			int reg_pmu_set;

			reg_pmu_set = FUNC6(ah, AR_PHY_PMU2) & ~AR_PHY_PMU2_PGM;
			FUNC9(ah, AR_PHY_PMU2, reg_pmu_set);
			if (!FUNC10(ah, AR_PHY_PMU2, reg_pmu_set))
				return;

			if (FUNC0(ah)) {
				if (ah->is_clk_25mhz) {
					reg_pmu_set = (3 << 1) | (8 << 4) |
						      (3 << 8) | (1 << 14) |
						      (6 << 17) | (1 << 20) |
						      (3 << 24);
				} else {
					reg_pmu_set = (4 << 1)  | (7 << 4) |
						      (3 << 8)  | (1 << 14) |
						      (6 << 17) | (1 << 20) |
						      (3 << 24);
				}
			} else {
				reg_pmu_set = (5 << 1) | (7 << 4) |
					      (2 << 8) | (2 << 14) |
					      (6 << 17) | (1 << 20) |
					      (3 << 24) | (1 << 28);
			}

			FUNC9(ah, AR_PHY_PMU1, reg_pmu_set);
			if (!FUNC10(ah, AR_PHY_PMU1, reg_pmu_set))
				return;

			reg_pmu_set = (FUNC6(ah, AR_PHY_PMU2) & ~0xFFC00000)
					| (4 << 26);
			FUNC9(ah, AR_PHY_PMU2, reg_pmu_set);
			if (!FUNC10(ah, AR_PHY_PMU2, reg_pmu_set))
				return;

			reg_pmu_set = (FUNC6(ah, AR_PHY_PMU2) & ~0x00200000)
					| (1 << 21);
			FUNC9(ah, AR_PHY_PMU2, reg_pmu_set);
			if (!FUNC10(ah, AR_PHY_PMU2, reg_pmu_set))
				return;
		} else if (FUNC1(ah) || FUNC4(ah) ||
			   FUNC3(ah)) {
			reg_val = FUNC11(pBase->swreg);
			FUNC9(ah, AR_PHY_PMU1, reg_val);

			if (FUNC3(ah))
				FUNC9(ah, AR_PHY_PMU2, 0x10200000);
		} else {
			/* Internal regulator is ON. Write swreg register. */
			reg_val = FUNC11(pBase->swreg);
			FUNC9(ah, AR_RTC_REG_CONTROL1,
				  FUNC6(ah, AR_RTC_REG_CONTROL1) &
				  (~AR_RTC_REG_CONTROL1_SWREG_PROGRAM));
			FUNC9(ah, AR_RTC_REG_CONTROL0, reg_val);
			/* Set REG_CONTROL1.SWREG_PROGRAM */
			FUNC9(ah, AR_RTC_REG_CONTROL1,
				  FUNC6(ah,
					   AR_RTC_REG_CONTROL1) |
					   AR_RTC_REG_CONTROL1_SWREG_PROGRAM);
		}
	} else {
		if (FUNC0(ah) || FUNC2(ah)) {
			FUNC8(ah, AR_PHY_PMU2, AR_PHY_PMU2_PGM, 0);
			while (FUNC7(ah, AR_PHY_PMU2,
						AR_PHY_PMU2_PGM))
				FUNC12(10);

			FUNC8(ah, AR_PHY_PMU1, AR_PHY_PMU1_PWD, 0x1);
			while (!FUNC7(ah, AR_PHY_PMU1,
						AR_PHY_PMU1_PWD))
				FUNC12(10);
			FUNC8(ah, AR_PHY_PMU2, AR_PHY_PMU2_PGM, 0x1);
			while (!FUNC7(ah, AR_PHY_PMU2,
						AR_PHY_PMU2_PGM))
				FUNC12(10);
		} else if (FUNC1(ah) || FUNC4(ah))
			FUNC8(ah, AR_PHY_PMU1, AR_PHY_PMU1_PWD, 0x1);
		else {
			reg_val = FUNC6(ah, AR_RTC_SLEEP_CLK) |
				AR_RTC_FORCE_SWREG_PRD;
			FUNC9(ah, AR_RTC_SLEEP_CLK, reg_val);
		}
	}

}