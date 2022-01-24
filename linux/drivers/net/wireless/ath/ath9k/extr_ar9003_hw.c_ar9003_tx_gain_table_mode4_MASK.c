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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar9300Modes_mixed_ob_db_tx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9340Modes_mixed_ob_db_tx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9462_2p0_modes_mix_ob_db_tx_gain ; 
 int /*<<< orphan*/  ar9462_2p1_modes_mix_ob_db_tx_gain ; 
 int /*<<< orphan*/  ar9580_1p0_mixed_ob_db_tx_gain_table ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah)
{
	if (FUNC0(ah))
		FUNC4(&ah->iniModesTxGain,
			ar9340Modes_mixed_ob_db_tx_gain_table_1p0);
	else if (FUNC3(ah))
		FUNC4(&ah->iniModesTxGain,
			ar9580_1p0_mixed_ob_db_tx_gain_table);
	else if (FUNC2(ah))
		FUNC4(&ah->iniModesTxGain,
		       ar9462_2p1_modes_mix_ob_db_tx_gain);
	else if (FUNC1(ah))
		FUNC4(&ah->iniModesTxGain,
		       ar9462_2p0_modes_mix_ob_db_tx_gain);
	else
		FUNC4(&ah->iniModesTxGain,
			ar9300Modes_mixed_ob_db_tx_gain_table_2p2);
}