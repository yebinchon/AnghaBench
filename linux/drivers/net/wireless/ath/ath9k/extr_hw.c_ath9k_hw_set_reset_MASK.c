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
struct ath_hw {int WARegVal; } ;

/* Variables and functions */
 int AH_WAIT_TIMEOUT ; 
 int AR9340_INTR_SYNC_LOCAL_TIMEOUT ; 
 int /*<<< orphan*/  AR_CFG ; 
 int /*<<< orphan*/  AR_CFG_HALT_ACK ; 
 int /*<<< orphan*/  AR_CFG_HALT_REQ ; 
 int /*<<< orphan*/  AR_INTR_SYNC_CAUSE ; 
 int /*<<< orphan*/  AR_INTR_SYNC_ENABLE ; 
 int AR_INTR_SYNC_LOCAL_TIMEOUT ; 
 int AR_INTR_SYNC_RADM_CPL_TIMEOUT ; 
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_AHB ; 
 int AR_RC_HOSTIF ; 
 int /*<<< orphan*/  AR_RTC_DERIVED_CLK ; 
 int /*<<< orphan*/  AR_RTC_DERIVED_CLK_PERIOD ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_EN ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  AR_RTC_RC ; 
 int AR_RTC_RC_COLD_RESET ; 
 int /*<<< orphan*/  AR_RTC_RC_M ; 
 int AR_RTC_RC_MAC_COLD ; 
 int AR_RTC_RC_MAC_WARM ; 
 int AR_RTC_RC_WARM_RESET ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_WA ; 
 int ATH9K_RESET_COLD ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*) ; 
 scalar_t__ FUNC16 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static bool FUNC21(struct ath_hw *ah, int type)
{
	u32 rst_flags;
	u32 tmpReg;

	if (FUNC0(ah)) {
		FUNC10(ah, AR_RTC_DERIVED_CLK,
			      AR_RTC_DERIVED_CLK_PERIOD, 1);
		(void)FUNC9(ah, AR_RTC_DERIVED_CLK);
	}

	FUNC6(ah);

	if (FUNC2(ah)) {
		FUNC12(ah, AR_WA, ah->WARegVal);
		FUNC20(10);
	}

	FUNC12(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN |
		  AR_RTC_FORCE_WAKE_ON_INT);

	if (FUNC0(ah)) {
		rst_flags = AR_RTC_RC_MAC_WARM | AR_RTC_RC_MAC_COLD |
			AR_RTC_RC_COLD_RESET | AR_RTC_RC_WARM_RESET;
	} else {
		tmpReg = FUNC9(ah, AR_INTR_SYNC_CAUSE);
		if (FUNC4(ah))
			tmpReg &= AR9340_INTR_SYNC_LOCAL_TIMEOUT;
		else
			tmpReg &= AR_INTR_SYNC_LOCAL_TIMEOUT |
				  AR_INTR_SYNC_RADM_CPL_TIMEOUT;

		if (tmpReg) {
			u32 val;
			FUNC12(ah, AR_INTR_SYNC_ENABLE, 0);

			val = AR_RC_HOSTIF;
			if (!FUNC2(ah))
				val |= AR_RC_AHB;
			FUNC12(ah, AR_RC, val);

		} else if (!FUNC2(ah))
			FUNC12(ah, AR_RC, AR_RC_AHB);

		rst_flags = AR_RTC_RC_MAC_WARM;
		if (type == ATH9K_RESET_COLD)
			rst_flags |= AR_RTC_RC_MAC_COLD;
	}

	if (FUNC3(ah)) {
		if (!FUNC14(ah, type))
			return false;
	}

	if (FUNC16(ah))
		FUNC13(ah);

	/* DMA HALT added to resolve ar9300 and ar9580 bus error during
	 * RTC_RC reg read
	 */
	if (FUNC1(ah) || FUNC5(ah)) {
		FUNC11(ah, AR_CFG, AR_CFG_HALT_REQ);
		FUNC17(ah, AR_CFG, AR_CFG_HALT_ACK, AR_CFG_HALT_ACK,
			      20 * AH_WAIT_TIMEOUT);
		FUNC8(ah, AR_CFG, AR_CFG_HALT_REQ);
	}

	FUNC12(ah, AR_RTC_RC, rst_flags);

	FUNC7(ah);

	if (FUNC2(ah))
		FUNC20(50);
	else if (FUNC0(ah))
		FUNC19(10);
	else
		FUNC20(100);

	FUNC12(ah, AR_RTC_RC, 0);
	if (!FUNC17(ah, AR_RTC_RC, AR_RTC_RC_M, 0, AH_WAIT_TIMEOUT)) {
		FUNC18(FUNC15(ah), RESET, "RTC stuck in MAC reset\n");
		return false;
	}

	if (!FUNC0(ah))
		FUNC12(ah, AR_RC, 0);

	if (FUNC0(ah))
		FUNC20(50);

	return true;
}