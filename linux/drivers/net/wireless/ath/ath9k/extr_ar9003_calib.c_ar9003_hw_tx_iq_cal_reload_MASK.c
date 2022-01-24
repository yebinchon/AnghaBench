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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tx_corr_coeff ;
struct ath_hw {int txchainmask; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {int* num_measures; int** tx_corr_coeff; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int /*<<< orphan*/  AR_PHY_RX_IQCAL_CORR_B0 ; 
 int /*<<< orphan*/  AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_3 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int MAX_MEASUREMENT ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah)
{
	struct ath9k_hw_cal_data *caldata = ah->caldata;
	u32 tx_corr_coeff[MAX_MEASUREMENT][AR9300_MAX_CHAINS];
	int i, im;

	FUNC5(tx_corr_coeff, 0, sizeof(tx_corr_coeff));
	for (i = 0; i < MAX_MEASUREMENT / 2; i++) {
		tx_corr_coeff[i * 2][0] = tx_corr_coeff[(i * 2) + 1][0] =
					FUNC0(i);
		if (!FUNC3(ah)) {
			tx_corr_coeff[i * 2][1] =
			tx_corr_coeff[(i * 2) + 1][1] =
					FUNC1(i);

			tx_corr_coeff[i * 2][2] =
			tx_corr_coeff[(i * 2) + 1][2] =
					FUNC2(i);
		}
	}

	for (i = 0; i < AR9300_MAX_CHAINS; i++) {
		if (!(ah->txchainmask & (1 << i)))
			continue;

		for (im = 0; im < caldata->num_measures[i]; im++) {
			if ((im % 2) == 0)
				FUNC4(ah, tx_corr_coeff[im][i],
				     AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE,
				     caldata->tx_corr_coeff[im][i]);
			else
				FUNC4(ah, tx_corr_coeff[im][i],
				     AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE,
				     caldata->tx_corr_coeff[im][i]);
		}
	}

	FUNC4(ah, AR_PHY_TX_IQCAL_CONTROL_3,
		      AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, 0x1);
	FUNC4(ah, AR_PHY_RX_IQCAL_CORR_B0,
		      AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, 0x1);
}