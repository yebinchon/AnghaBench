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
struct TYPE_2__ {int tx_chainmask; } ;
struct ath_hw {TYPE_1__ caps; scalar_t__ paprd_training_power; } ;
struct ath9k_hw_cal_data {scalar_t__* small_signal_gain; scalar_t__** pa_table; } ;

/* Variables and functions */
 scalar_t__ AR_PHY_PAPRD_CTRL1_B0 ; 
 scalar_t__ AR_PHY_PAPRD_CTRL1_B1 ; 
 scalar_t__ AR_PHY_PAPRD_CTRL1_B2 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL ; 
 scalar_t__ AR_PHY_PAPRD_MEM_TAB_B0 ; 
 scalar_t__ AR_PHY_PAPRD_MEM_TAB_B1 ; 
 scalar_t__ AR_PHY_PAPRD_MEM_TAB_B2 ; 
 scalar_t__ AR_PHY_PA_GAIN123_B0 ; 
 scalar_t__ AR_PHY_PA_GAIN123_B1 ; 
 scalar_t__ AR_PHY_PA_GAIN123_B2 ; 
 int /*<<< orphan*/  AR_PHY_PA_GAIN123_PA_GAIN1 ; 
 int FUNC0 (int) ; 
 int PAPRD_TABLE_SZ ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__,scalar_t__) ; 

void FUNC3(struct ath_hw *ah,
					struct ath9k_hw_cal_data *caldata,
					int chain)
{
	u32 *paprd_table_val = caldata->pa_table[chain];
	u32 small_signal_gain = caldata->small_signal_gain[chain];
	u32 training_power = ah->paprd_training_power;
	u32 reg = 0;
	int i;

	if (chain == 0)
		reg = AR_PHY_PAPRD_MEM_TAB_B0;
	else if (chain == 1)
		reg = AR_PHY_PAPRD_MEM_TAB_B1;
	else if (chain == 2)
		reg = AR_PHY_PAPRD_MEM_TAB_B2;

	for (i = 0; i < PAPRD_TABLE_SZ; i++) {
		FUNC2(ah, reg, paprd_table_val[i]);
		reg = reg + 4;
	}

	if (chain == 0)
		reg = AR_PHY_PA_GAIN123_B0;
	else if (chain == 1)
		reg = AR_PHY_PA_GAIN123_B1;
	else
		reg = AR_PHY_PA_GAIN123_B2;

	FUNC1(ah, reg, AR_PHY_PA_GAIN123_PA_GAIN1, small_signal_gain);

	FUNC1(ah, AR_PHY_PAPRD_CTRL1_B0,
		      AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL,
		      training_power);

	if (ah->caps.tx_chainmask & FUNC0(1))
		FUNC1(ah, AR_PHY_PAPRD_CTRL1_B1,
			      AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL,
			      training_power);

	if (ah->caps.tx_chainmask & FUNC0(2))
		/* val AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL correct? */
		FUNC1(ah, AR_PHY_PAPRD_CTRL1_B2,
			      AR_PHY_PAPRD_CTRL1_PAPRD_POWER_AT_AM2AM_CAL,
			      training_power);
}