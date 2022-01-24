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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_BB_THERM_ADC_4 ; 
 int /*<<< orphan*/  AR_PHY_BB_THERM_ADC_4_LATEST_THERM_VALUE ; 
 int /*<<< orphan*/  AR_PHY_BB_THERM_ADC_4_LATEST_VOLT_VALUE ; 
 int /*<<< orphan*/  AR_PHY_CL_TAB_0 ; 
 int /*<<< orphan*/  AR_PHY_CL_TAB_1 ; 
 int /*<<< orphan*/  AR_PHY_CL_TAB_2 ; 
 int /*<<< orphan*/  AR_PHY_CL_TAB_CL_GAIN_MOD ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ; 
 int /*<<< orphan*/  AR_PHY_TPC_11_B0 ; 
 int /*<<< orphan*/  AR_PHY_TPC_11_B1 ; 
 int /*<<< orphan*/  AR_PHY_TPC_11_B2 ; 
 int /*<<< orphan*/  AR_PHY_TPC_11_OLPC_GAIN_DELTA ; 
 int /*<<< orphan*/  AR_PHY_TPC_12 ; 
 int /*<<< orphan*/  AR_PHY_TPC_12_DESIRED_SCALE_HT40_5 ; 
 int /*<<< orphan*/  AR_PHY_TPC_18 ; 
 int /*<<< orphan*/  AR_PHY_TPC_18_THERM_CAL_VALUE ; 
 int /*<<< orphan*/  AR_PHY_TPC_18_VOLT_CAL_VALUE ; 
 int /*<<< orphan*/  AR_PHY_TPC_19 ; 
 int /*<<< orphan*/  AR_PHY_TPC_19_ALPHA_THERM ; 
 int /*<<< orphan*/  AR_PHY_TPC_19_ALPHA_VOLT ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static unsigned int FUNC4(struct ath_hw *ah, int chain,
					    int target_power)
{
	int olpc_gain_delta = 0, cl_gain_mod;
	int alpha_therm, alpha_volt;
	int therm_cal_value, volt_cal_value;
	int therm_value, volt_value;
	int thermal_gain_corr, voltage_gain_corr;
	int desired_scale, desired_gain = 0;
	u32 reg_olpc  = 0, reg_cl_gain  = 0;

	FUNC0(ah, AR_PHY_PAPRD_TRAINER_STAT1,
		    AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE);
	desired_scale = FUNC1(ah, AR_PHY_TPC_12,
				       AR_PHY_TPC_12_DESIRED_SCALE_HT40_5);
	alpha_therm = FUNC1(ah, AR_PHY_TPC_19,
				     AR_PHY_TPC_19_ALPHA_THERM);
	alpha_volt = FUNC1(ah, AR_PHY_TPC_19,
				    AR_PHY_TPC_19_ALPHA_VOLT);
	therm_cal_value = FUNC1(ah, AR_PHY_TPC_18,
					 AR_PHY_TPC_18_THERM_CAL_VALUE);
	volt_cal_value = FUNC1(ah, AR_PHY_TPC_18,
					AR_PHY_TPC_18_VOLT_CAL_VALUE);
	therm_value = FUNC1(ah, AR_PHY_BB_THERM_ADC_4,
				     AR_PHY_BB_THERM_ADC_4_LATEST_THERM_VALUE);
	volt_value = FUNC1(ah, AR_PHY_BB_THERM_ADC_4,
				    AR_PHY_BB_THERM_ADC_4_LATEST_VOLT_VALUE);

	switch (chain) {
	case 0:
		reg_olpc = AR_PHY_TPC_11_B0;
		reg_cl_gain = AR_PHY_CL_TAB_0;
		break;
	case 1:
		reg_olpc = AR_PHY_TPC_11_B1;
		reg_cl_gain = AR_PHY_CL_TAB_1;
		break;
	case 2:
		reg_olpc = AR_PHY_TPC_11_B2;
		reg_cl_gain = AR_PHY_CL_TAB_2;
		break;
	default:
		FUNC3(FUNC2(ah), CALIBRATE,
			"Invalid chainmask: %d\n", chain);
		break;
	}

	olpc_gain_delta = FUNC1(ah, reg_olpc,
					 AR_PHY_TPC_11_OLPC_GAIN_DELTA);
	cl_gain_mod = FUNC1(ah, reg_cl_gain,
					 AR_PHY_CL_TAB_CL_GAIN_MOD);

	if (olpc_gain_delta >= 128)
		olpc_gain_delta = olpc_gain_delta - 256;

	thermal_gain_corr = (alpha_therm * (therm_value - therm_cal_value) +
			     (256 / 2)) / 256;
	voltage_gain_corr = (alpha_volt * (volt_value - volt_cal_value) +
			     (128 / 2)) / 128;
	desired_gain = target_power - olpc_gain_delta - thermal_gain_corr -
	    voltage_gain_corr + desired_scale + cl_gain_mod;

	return desired_gain;
}