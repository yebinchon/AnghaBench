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
struct TYPE_2__ {int macVersion; void* phyRev; int /*<<< orphan*/  macRev; } ;
struct ath_hw {int WARegVal; int is_pciexpress; TYPE_1__ hw_version; } ;
struct ath_common {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_CHIP_ID ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
#define  AR_SREV_VERSION_5416_PCI 144 
#define  AR_SREV_VERSION_5416_PCIE 143 
#define  AR_SREV_VERSION_9100 142 
#define  AR_SREV_VERSION_9160 141 
#define  AR_SREV_VERSION_9271 140 
#define  AR_SREV_VERSION_9280 139 
#define  AR_SREV_VERSION_9285 138 
#define  AR_SREV_VERSION_9287 137 
#define  AR_SREV_VERSION_9300 136 
#define  AR_SREV_VERSION_9330 135 
#define  AR_SREV_VERSION_9340 134 
#define  AR_SREV_VERSION_9462 133 
#define  AR_SREV_VERSION_9485 132 
#define  AR_SREV_VERSION_9531 131 
#define  AR_SREV_VERSION_9550 130 
#define  AR_SREV_VERSION_9561 129 
#define  AR_SREV_VERSION_9565 128 
 int /*<<< orphan*/  AR_WA ; 
 int AR_WA_ASPM_TIMER_BASED_DISABLE ; 
 int AR_WA_BIT22 ; 
 int AR_WA_D3_L1_DISABLE ; 
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int /*<<< orphan*/  ATH9K_RESET_POWER_ON ; 
 int /*<<< orphan*/  ATH_HW_INITIALIZED ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 void* FUNC7 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ath_hw*) ; 
 struct ath_common* FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*) ; 
 int FUNC19 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ath_common*,char*,...) ; 

__attribute__((used)) static int FUNC24(struct ath_hw *ah)
{
	struct ath_common *common = FUNC10(ah);
	int r = 0;

	if (!FUNC20(ah)) {
		FUNC23(common, "Could not read hardware revisions");
		return -EOPNOTSUPP;
	}

	switch (ah->hw_version.macVersion) {
	case AR_SREV_VERSION_5416_PCI:
	case AR_SREV_VERSION_5416_PCIE:
	case AR_SREV_VERSION_9160:
	case AR_SREV_VERSION_9100:
	case AR_SREV_VERSION_9280:
	case AR_SREV_VERSION_9285:
	case AR_SREV_VERSION_9287:
	case AR_SREV_VERSION_9271:
	case AR_SREV_VERSION_9300:
	case AR_SREV_VERSION_9330:
	case AR_SREV_VERSION_9485:
	case AR_SREV_VERSION_9340:
	case AR_SREV_VERSION_9462:
	case AR_SREV_VERSION_9550:
	case AR_SREV_VERSION_9565:
	case AR_SREV_VERSION_9531:
	case AR_SREV_VERSION_9561:
		break;
	default:
		FUNC23(common,
			"Mac Chip Rev 0x%02x.%x is not supported by this driver\n",
			ah->hw_version.macVersion, ah->hw_version.macRev);
		return -EOPNOTSUPP;
	}

	/*
	 * Read back AR_WA into a permanent copy and set bits 14 and 17.
	 * We need to do this to avoid RMW of this register. We cannot
	 * read the reg when chip is asleep.
	 */
	if (FUNC2(ah)) {
		ah->WARegVal = FUNC7(ah, AR_WA);
		ah->WARegVal |= (AR_WA_D3_L1_DISABLE |
				 AR_WA_ASPM_TIMER_BASED_DISABLE);
	}

	if (!FUNC21(ah, ATH9K_RESET_POWER_ON)) {
		FUNC23(common, "Couldn't reset chip\n");
		return -EIO;
	}

	if (FUNC6(ah)) {
		ah->WARegVal |= AR_WA_BIT22;
		FUNC8(ah, AR_WA, ah->WARegVal);
	}

	FUNC15(ah);
	FUNC14(ah);

	r = FUNC9(ah);
	if (r)
		return r;

	if (!FUNC22(ah, ATH9K_PM_AWAKE)) {
		FUNC23(common, "Couldn't wakeup chip\n");
		return -EIO;
	}

	if (FUNC1(ah) || FUNC0(ah) || FUNC4(ah) ||
	    FUNC3(ah) || FUNC5(ah))
		ah->is_pciexpress = false;

	ah->hw_version.phyRev = FUNC7(ah, AR_PHY_CHIP_ID);
	FUNC13(ah);

	if (!ah->is_pciexpress)
		FUNC11(ah);

	r = FUNC19(ah);
	if (r)
		return r;

	FUNC18(ah);
	r = FUNC12(ah);
	if (r)
		return r;

	FUNC17(ah);
	FUNC16(ah);

	common->state = ATH_HW_INITIALIZED;

	return 0;
}