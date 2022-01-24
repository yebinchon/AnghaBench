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
struct ath_hw {int chip_fullsleep; TYPE_1__* eep_ops; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CR ; 
 int AR_CR_RXE ; 
 int /*<<< orphan*/  AR_Q_TXE ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int ATH9K_RESET_COLD ; 
 int ATH9K_RESET_POWER_ON ; 
 int ATH9K_RESET_WARM ; 
 int /*<<< orphan*/  EEP_OL_PWRCTRL ; 
 int FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct ath_hw *ah,
				struct ath9k_channel *chan)
{
	int reset_type = ATH9K_RESET_WARM;

	if (FUNC0(ah)) {
		if (ah->eep_ops->get_eeprom(ah, EEP_OL_PWRCTRL))
			reset_type = ATH9K_RESET_POWER_ON;
		else
			reset_type = ATH9K_RESET_COLD;
	} else if (ah->chip_fullsleep || FUNC2(ah, AR_Q_TXE) ||
		   (FUNC2(ah, AR_CR) & AR_CR_RXE))
		reset_type = ATH9K_RESET_COLD;

	if (!FUNC5(ah, reset_type))
		return false;

	if (!FUNC6(ah, ATH9K_PM_AWAKE))
		return false;

	ah->chip_fullsleep = false;

	if (FUNC1(ah))
		FUNC3(ah);
	FUNC4(ah, chan);

	return true;
}