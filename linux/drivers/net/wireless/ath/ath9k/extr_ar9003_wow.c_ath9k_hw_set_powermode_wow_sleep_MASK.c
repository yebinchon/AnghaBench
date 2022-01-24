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
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_CR ; 
 int AR_CR_RXD ; 
 int /*<<< orphan*/  AR_CR_RXE ; 
 int /*<<< orphan*/  AR_DC_TSF2_ENABLE ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_DIRECT_CONNECT ; 
 int AR_GEN_TIMERS2_MODE_ENABLE_MASK ; 
 int /*<<< orphan*/  AR_MAC_PCU_GEN_TIMER_TSF_SEL ; 
 int /*<<< orphan*/  AR_NDP2_TIMER_MODE ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  AR_RTC_KEEP_AWAKE ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,char*,int,int) ; 

__attribute__((used)) static void FUNC11(struct ath_hw *ah)
{
	struct ath_common *common = FUNC6(ah);

	FUNC8(ah);

	/* set rx disable bit */
	FUNC5(ah, AR_CR, AR_CR_RXD);

	if (!FUNC9(ah, AR_CR, AR_CR_RXE, 0, AH_WAIT_TIMEOUT)) {
		FUNC10(common, "Failed to stop Rx DMA in 10ms AR_CR=0x%08x AR_DIAG_SW=0x%08x\n",
			FUNC4(ah, AR_CR), FUNC4(ah, AR_DIAG_SW));
		return;
	}

	if (FUNC0(ah) || FUNC2(ah)) {
		if (!FUNC4(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL))
			FUNC3(ah, AR_DIRECT_CONNECT, AR_DC_TSF2_ENABLE);
	} else if (FUNC1(ah)){
		if (!(FUNC4(ah, AR_NDP2_TIMER_MODE) &
		      AR_GEN_TIMERS2_MODE_ENABLE_MASK))
			FUNC3(ah, AR_DIRECT_CONNECT, AR_DC_TSF2_ENABLE);
	}

	if (FUNC7(ah))
		FUNC5(ah, AR_RTC_KEEP_AWAKE, 0x2);

	FUNC5(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_ON_INT);
}