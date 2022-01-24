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
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 scalar_t__ FUNC10 (struct ath_hw*) ; 
 scalar_t__ FUNC11 (struct ath_hw*) ; 
 scalar_t__ FUNC12 (struct ath_hw*) ; 
 scalar_t__ FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar9300Modes_high_ob_db_tx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9331_modes_high_ob_db_tx_gain_1p1 ; 
 int /*<<< orphan*/  ar9331_modes_high_ob_db_tx_gain_1p2 ; 
 int /*<<< orphan*/  ar9340Modes_high_ob_db_tx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9462_2p0_modes_high_ob_db_tx_gain ; 
 int /*<<< orphan*/  ar9462_2p1_modes_high_ob_db_tx_gain ; 
 int /*<<< orphan*/  ar9485Modes_high_ob_db_tx_gain_1_1 ; 
 int /*<<< orphan*/  ar955x_1p0_modes_no_xpa_tx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p0_modes_high_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p1_modes_high_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  ar9580_1p0_high_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  qca953x_1p0_modes_no_xpa_tx_gain_table ; 
 int /*<<< orphan*/  qca953x_1p1_modes_no_xpa_tx_gain_table ; 
 int /*<<< orphan*/  qca953x_2p0_modes_no_xpa_tx_gain_table ; 
 int /*<<< orphan*/  qca956x_1p0_modes_no_xpa_tx_gain_table ; 

__attribute__((used)) static void FUNC15(struct ath_hw *ah)
{
	if (FUNC1(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9331_modes_high_ob_db_tx_gain_1p2);
	else if (FUNC0(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9331_modes_high_ob_db_tx_gain_1p1);
	else if (FUNC2(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9340Modes_high_ob_db_tx_gain_table_1p0);
	else if (FUNC5(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9485Modes_high_ob_db_tx_gain_1_1);
	else if (FUNC13(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9580_1p0_high_ob_db_tx_gain_table);
	else if (FUNC9(ah))
		FUNC14(&ah->iniModesTxGain,
			ar955x_1p0_modes_no_xpa_tx_gain_table);
	else if (FUNC6(ah)) {
		if (FUNC8(ah))
			FUNC14(&ah->iniModesTxGain,
				       qca953x_2p0_modes_no_xpa_tx_gain_table);
		else if (FUNC7(ah))
			FUNC14(&ah->iniModesTxGain,
				       qca953x_1p1_modes_no_xpa_tx_gain_table);
		else
			FUNC14(&ah->iniModesTxGain,
				       qca953x_1p0_modes_no_xpa_tx_gain_table);
	} else if (FUNC10(ah))
		FUNC14(&ah->iniModesTxGain,
			       qca956x_1p0_modes_no_xpa_tx_gain_table);
	else if (FUNC4(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9462_2p1_modes_high_ob_db_tx_gain);
	else if (FUNC3(ah))
		FUNC14(&ah->iniModesTxGain,
			ar9462_2p0_modes_high_ob_db_tx_gain);
	else if (FUNC12(ah))
		FUNC14(&ah->iniModesTxGain,
			       ar9565_1p1_modes_high_ob_db_tx_gain_table);
	else if (FUNC11(ah))
		FUNC14(&ah->iniModesTxGain,
			       ar9565_1p0_modes_high_ob_db_tx_gain_table);
	else
		FUNC14(&ah->iniModesTxGain,
			ar9300Modes_high_ob_db_tx_gain_table_2p2);
}