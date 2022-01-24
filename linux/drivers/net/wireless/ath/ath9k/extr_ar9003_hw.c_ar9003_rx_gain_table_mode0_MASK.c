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
struct ath_hw {int /*<<< orphan*/  iniModesRxGain; int /*<<< orphan*/  ini_modes_rxgain_xlna; int /*<<< orphan*/  ini_modes_rx_gain_bounds; } ;

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
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar9300Common_rx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9331_common_rx_gain_1p1 ; 
 int /*<<< orphan*/  ar9331_common_rx_gain_1p2 ; 
 int /*<<< orphan*/  ar9340Common_rx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9462_2p0_common_rx_gain ; 
 int /*<<< orphan*/  ar9462_2p1_common_rx_gain ; 
 int /*<<< orphan*/  ar9485_common_rx_gain_1_1 ; 
 int /*<<< orphan*/  ar955x_1p0_common_rx_gain_bounds ; 
 int /*<<< orphan*/  ar955x_1p0_common_rx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p0_Common_rx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p1_Common_rx_gain_table ; 
 int /*<<< orphan*/  ar9580_1p0_rx_gain_table ; 
 int /*<<< orphan*/  qca953x_1p0_common_rx_gain_bounds ; 
 int /*<<< orphan*/  qca953x_1p0_common_rx_gain_table ; 
 int /*<<< orphan*/  qca956x_1p0_common_rx_gain_bounds ; 
 int /*<<< orphan*/  qca956x_1p0_common_rx_gain_table ; 
 int /*<<< orphan*/  qca956x_1p0_xlna_only ; 

__attribute__((used)) static void FUNC13(struct ath_hw *ah)
{
	if (FUNC1(ah))
		FUNC12(&ah->iniModesRxGain,
				ar9331_common_rx_gain_1p2);
	else if (FUNC0(ah))
		FUNC12(&ah->iniModesRxGain,
				ar9331_common_rx_gain_1p1);
	else if (FUNC2(ah))
		FUNC12(&ah->iniModesRxGain,
				ar9340Common_rx_gain_table_1p0);
	else if (FUNC5(ah))
		FUNC12(&ah->iniModesRxGain,
			       ar9485_common_rx_gain_1_1);
	else if (FUNC7(ah)) {
		FUNC12(&ah->iniModesRxGain,
				ar955x_1p0_common_rx_gain_table);
		FUNC12(&ah->ini_modes_rx_gain_bounds,
				ar955x_1p0_common_rx_gain_bounds);
	} else if (FUNC6(ah)) {
		FUNC12(&ah->iniModesRxGain,
			       qca953x_1p0_common_rx_gain_table);
		FUNC12(&ah->ini_modes_rx_gain_bounds,
			       qca953x_1p0_common_rx_gain_bounds);
	} else if (FUNC8(ah)) {
		FUNC12(&ah->iniModesRxGain,
			       qca956x_1p0_common_rx_gain_table);
		FUNC12(&ah->ini_modes_rx_gain_bounds,
			       qca956x_1p0_common_rx_gain_bounds);
		FUNC12(&ah->ini_modes_rxgain_xlna,
			       qca956x_1p0_xlna_only);
	} else if (FUNC11(ah))
		FUNC12(&ah->iniModesRxGain,
				ar9580_1p0_rx_gain_table);
	else if (FUNC4(ah))
		FUNC12(&ah->iniModesRxGain,
				ar9462_2p1_common_rx_gain);
	else if (FUNC3(ah))
		FUNC12(&ah->iniModesRxGain,
				ar9462_2p0_common_rx_gain);
	else if (FUNC10(ah))
		FUNC12(&ah->iniModesRxGain,
			       ar9565_1p1_Common_rx_gain_table);
	else if (FUNC9(ah))
		FUNC12(&ah->iniModesRxGain,
			       ar9565_1p0_Common_rx_gain_table);
	else
		FUNC12(&ah->iniModesRxGain,
				ar9300Common_rx_gain_table_2p2);
}