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
struct ath_hw {int /*<<< orphan*/  iniModesTxGain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 scalar_t__ FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar9300Modes_low_ob_db_tx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9331_modes_low_ob_db_tx_gain_1p1 ; 
 int /*<<< orphan*/  ar9331_modes_low_ob_db_tx_gain_1p2 ; 
 int /*<<< orphan*/  ar9340Modes_low_ob_db_tx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9485Modes_low_ob_db_tx_gain_1_1 ; 
 int /*<<< orphan*/  ar9565_1p0_modes_low_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p1_modes_low_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  ar9580_1p0_low_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  qca953x_1p1_modes_no_xpa_low_power_tx_gain_table ; 
 int /*<<< orphan*/  qca956x_1p0_modes_no_xpa_low_ob_db_tx_gain_table ; 

__attribute__((used)) static void FUNC10(struct ath_hw *ah)
{
	if (FUNC1(ah))
		FUNC9(&ah->iniModesTxGain,
			ar9331_modes_low_ob_db_tx_gain_1p2);
	else if (FUNC0(ah))
		FUNC9(&ah->iniModesTxGain,
			ar9331_modes_low_ob_db_tx_gain_1p1);
	else if (FUNC2(ah))
		FUNC9(&ah->iniModesTxGain,
			ar9340Modes_low_ob_db_tx_gain_table_1p0);
	else if (FUNC4(ah))
		FUNC9(&ah->iniModesTxGain,
			       qca953x_1p1_modes_no_xpa_low_power_tx_gain_table);
	else if (FUNC3(ah))
		FUNC9(&ah->iniModesTxGain,
			ar9485Modes_low_ob_db_tx_gain_1_1);
	else if (FUNC8(ah))
		FUNC9(&ah->iniModesTxGain,
			ar9580_1p0_low_ob_db_tx_gain_table);
	else if (FUNC5(ah))
		FUNC9(&ah->iniModesTxGain,
			       qca956x_1p0_modes_no_xpa_low_ob_db_tx_gain_table);
	else if (FUNC7(ah))
		FUNC9(&ah->iniModesTxGain,
			       ar9565_1p1_modes_low_ob_db_tx_gain_table);
	else if (FUNC6(ah))
		FUNC9(&ah->iniModesTxGain,
			       ar9565_1p0_modes_low_ob_db_tx_gain_table);
	else
		FUNC9(&ah->iniModesTxGain,
			ar9300Modes_low_ob_db_tx_gain_table_2p2);
}