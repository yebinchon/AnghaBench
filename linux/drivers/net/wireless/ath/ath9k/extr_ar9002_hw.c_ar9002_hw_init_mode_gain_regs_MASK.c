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
typedef  scalar_t__ u32 ;
struct ath_hw {int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  iniModesRxGain; TYPE_1__* eep_ops; } ;
struct TYPE_2__ {scalar_t__ (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AR5416_EEP_TXGAIN_HIGH_POWER ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  EEP_TXGAIN_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  ar9285Modes_XE2_0_high_power ; 
 int /*<<< orphan*/  ar9285Modes_XE2_0_normal_power ; 
 int /*<<< orphan*/  ar9285Modes_high_power_tx_gain_9285_1_2 ; 
 int /*<<< orphan*/  ar9285Modes_original_tx_gain_9285_1_2 ; 
 int /*<<< orphan*/  ar9287Modes_rx_gain_9287_1_1 ; 
 int /*<<< orphan*/  ar9287Modes_tx_gain_9287_1_1 ; 
 scalar_t__ FUNC9 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ath_hw *ah)
{
	u32 txgain_type = ah->eep_ops->get_eeprom(ah, EEP_TXGAIN_TYPE);

	if (FUNC4(ah))
		FUNC5(&ah->iniModesRxGain,
			       ar9287Modes_rx_gain_9287_1_1);
	else if (FUNC1(ah))
		FUNC7(ah);

	if (FUNC0(ah)) {
		FUNC6(ah, txgain_type);
	} else if (FUNC4(ah)) {
		FUNC5(&ah->iniModesTxGain,
			       ar9287Modes_tx_gain_9287_1_1);
	} else if (FUNC1(ah)) {
		FUNC8(ah, txgain_type);
	} else if (FUNC3(ah)) {
		/* txgain table */
		if (txgain_type == AR5416_EEP_TXGAIN_HIGH_POWER) {
			if (FUNC2(ah)) {
				FUNC5(&ah->iniModesTxGain,
					       ar9285Modes_XE2_0_high_power);
			} else {
				FUNC5(&ah->iniModesTxGain,
					ar9285Modes_high_power_tx_gain_9285_1_2);
			}
		} else {
			if (FUNC2(ah)) {
				FUNC5(&ah->iniModesTxGain,
					       ar9285Modes_XE2_0_normal_power);
			} else {
				FUNC5(&ah->iniModesTxGain,
					ar9285Modes_original_tx_gain_9285_1_2);
			}
		}
	}
}