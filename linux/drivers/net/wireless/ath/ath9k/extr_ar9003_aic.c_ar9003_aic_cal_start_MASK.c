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
typedef  int u8 ;
struct ath9k_hw_aic {int aic_cal_start_time; int aic_cal_state; scalar_t__ aic_caled_chan; scalar_t__* aic_sram; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int AIC_CAL_STATE_STARTED ; 
 int /*<<< orphan*/  AR_PHY_AIC_BTTX_PWR_THR ; 
 int /*<<< orphan*/  AR_PHY_AIC_BT_IDLE_CFG ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_BT_REF_DELAY ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_CH_VALID_RESET ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_COM_ATT_DB_BACKOFF ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_COM_ATT_DB_EST_ISO ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_COM_ATT_DB_FIXED ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_CONV_CHECK_FACTOR ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_ISO_EST_INIT_SETTING ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_MAX_HOP_COUNT ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_MIN_VALID_COUNT ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_PERF_CHECK_FACTOR ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_PWR_EST_LONG ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_ROT_ATT_DB_EST_ISO ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_ROT_IDX_CORR ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_STEP_SIZE_CORR ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_SYNTH_AFTER_BTRX ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_SYNTH_SETTLING ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_SYNTH_TOGGLE ; 
 int /*<<< orphan*/  AR_PHY_AIC_CAL_TARGET_MAG_SETTING ; 
 scalar_t__ AR_PHY_AIC_CTRL_0_B0 ; 
 scalar_t__ AR_PHY_AIC_CTRL_0_B1 ; 
 scalar_t__ AR_PHY_AIC_CTRL_1_B0 ; 
 scalar_t__ AR_PHY_AIC_CTRL_1_B1 ; 
 scalar_t__ AR_PHY_AIC_CTRL_2_B0 ; 
 scalar_t__ AR_PHY_AIC_CTRL_3_B0 ; 
 scalar_t__ AR_PHY_AIC_CTRL_4_B0 ; 
 scalar_t__ AR_PHY_AIC_CTRL_4_B1 ; 
 int /*<<< orphan*/  AR_PHY_AIC_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_AIC_F_WLAN ; 
 int /*<<< orphan*/  AR_PHY_AIC_MON_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_AIC_MON_MAX_HOP_COUNT ; 
 int /*<<< orphan*/  AR_PHY_AIC_MON_MIN_STALE_COUNT ; 
 int /*<<< orphan*/  AR_PHY_AIC_MON_PD_TALLY_SCALING ; 
 int /*<<< orphan*/  AR_PHY_AIC_MON_PERF_THR ; 
 int /*<<< orphan*/  AR_PHY_AIC_MON_PWR_EST_LONG ; 
 int /*<<< orphan*/  AR_PHY_AIC_RADIO_DELAY ; 
 int /*<<< orphan*/  AR_PHY_AIC_ROT_IDX_COUNT_MAX ; 
 int /*<<< orphan*/  AR_PHY_AIC_RSSI_MAX ; 
 int /*<<< orphan*/  AR_PHY_AIC_RSSI_MIN ; 
 scalar_t__ AR_PHY_AIC_SRAM_ADDR_B0 ; 
 scalar_t__ AR_PHY_AIC_SRAM_DATA_B0 ; 
 int /*<<< orphan*/  AR_PHY_AIC_STDBY_COM_ATT_DB ; 
 int /*<<< orphan*/  AR_PHY_AIC_STDBY_COND ; 
 int /*<<< orphan*/  AR_PHY_AIC_STDBY_ROT_ATT_DB ; 
 scalar_t__ AR_TSF_L32 ; 
 int ATH_AIC_BT_AIC_ENABLE ; 
 scalar_t__ ATH_AIC_BT_JUPITER_CTRL ; 
 int ATH_AIC_MAX_BT_CHANNEL ; 
 int ATH_AIC_SRAM_AUTO_INCREMENT ; 
 int ATH_AIC_SRAM_CAL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,scalar_t__,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 

__attribute__((used)) static u8 FUNC6(struct ath_hw *ah, u8 min_valid_count)
{
	struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;
	int i;

	/* Write to Gain table with auto increment enabled. */
	FUNC3(ah, (AR_PHY_AIC_SRAM_ADDR_B0 + 0x3000),
		  (ATH_AIC_SRAM_AUTO_INCREMENT |
		   ATH_AIC_SRAM_CAL_OFFSET));

	for (i = 0; i < ATH_AIC_MAX_BT_CHANNEL; i++) {
		FUNC3(ah, (AR_PHY_AIC_SRAM_DATA_B0 + 0x3000), 0);
		aic->aic_sram[i] = 0;
	}

	FUNC3(ah, AR_PHY_AIC_CTRL_0_B0,
		  (FUNC4(0, AR_PHY_AIC_MON_ENABLE) |
		   FUNC4(127, AR_PHY_AIC_CAL_MAX_HOP_COUNT) |
		   FUNC4(min_valid_count, AR_PHY_AIC_CAL_MIN_VALID_COUNT) |
		   FUNC4(37, AR_PHY_AIC_F_WLAN) |
		   FUNC4(1, AR_PHY_AIC_CAL_CH_VALID_RESET) |
		   FUNC4(0, AR_PHY_AIC_CAL_ENABLE) |
		   FUNC4(0x40, AR_PHY_AIC_BTTX_PWR_THR) |
		   FUNC4(0, AR_PHY_AIC_ENABLE)));

	FUNC3(ah, AR_PHY_AIC_CTRL_0_B1,
		  (FUNC4(0, AR_PHY_AIC_MON_ENABLE) |
		   FUNC4(1, AR_PHY_AIC_CAL_CH_VALID_RESET) |
		   FUNC4(0, AR_PHY_AIC_CAL_ENABLE) |
		   FUNC4(0x40, AR_PHY_AIC_BTTX_PWR_THR) |
		   FUNC4(0, AR_PHY_AIC_ENABLE)));

	FUNC3(ah, AR_PHY_AIC_CTRL_1_B0,
		  (FUNC4(8, AR_PHY_AIC_CAL_BT_REF_DELAY) |
		   FUNC4(0, AR_PHY_AIC_BT_IDLE_CFG) |
		   FUNC4(1, AR_PHY_AIC_STDBY_COND) |
		   FUNC4(37, AR_PHY_AIC_STDBY_ROT_ATT_DB) |
		   FUNC4(5, AR_PHY_AIC_STDBY_COM_ATT_DB) |
		   FUNC4(15, AR_PHY_AIC_RSSI_MAX) |
		   FUNC4(0, AR_PHY_AIC_RSSI_MIN)));

	FUNC3(ah, AR_PHY_AIC_CTRL_1_B1,
		  (FUNC4(15, AR_PHY_AIC_RSSI_MAX) |
		   FUNC4(0, AR_PHY_AIC_RSSI_MIN)));

	FUNC3(ah, AR_PHY_AIC_CTRL_2_B0,
		  (FUNC4(44, AR_PHY_AIC_RADIO_DELAY) |
		   FUNC4(8, AR_PHY_AIC_CAL_STEP_SIZE_CORR) |
		   FUNC4(12, AR_PHY_AIC_CAL_ROT_IDX_CORR) |
		   FUNC4(2, AR_PHY_AIC_CAL_CONV_CHECK_FACTOR) |
		   FUNC4(5, AR_PHY_AIC_ROT_IDX_COUNT_MAX) |
		   FUNC4(0, AR_PHY_AIC_CAL_SYNTH_TOGGLE) |
		   FUNC4(0, AR_PHY_AIC_CAL_SYNTH_AFTER_BTRX) |
		   FUNC4(200, AR_PHY_AIC_CAL_SYNTH_SETTLING)));

	FUNC3(ah, AR_PHY_AIC_CTRL_3_B0,
		  (FUNC4(2, AR_PHY_AIC_MON_MAX_HOP_COUNT) |
		   FUNC4(1, AR_PHY_AIC_MON_MIN_STALE_COUNT) |
		   FUNC4(1, AR_PHY_AIC_MON_PWR_EST_LONG) |
		   FUNC4(2, AR_PHY_AIC_MON_PD_TALLY_SCALING) |
		   FUNC4(10, AR_PHY_AIC_MON_PERF_THR) |
		   FUNC4(2, AR_PHY_AIC_CAL_TARGET_MAG_SETTING) |
		   FUNC4(1, AR_PHY_AIC_CAL_PERF_CHECK_FACTOR) |
		   FUNC4(1, AR_PHY_AIC_CAL_PWR_EST_LONG)));

	FUNC3(ah, AR_PHY_AIC_CTRL_4_B0,
		  (FUNC4(2, AR_PHY_AIC_CAL_ROT_ATT_DB_EST_ISO) |
		   FUNC4(3, AR_PHY_AIC_CAL_COM_ATT_DB_EST_ISO) |
		   FUNC4(0, AR_PHY_AIC_CAL_ISO_EST_INIT_SETTING) |
		   FUNC4(2, AR_PHY_AIC_CAL_COM_ATT_DB_BACKOFF) |
		   FUNC4(1, AR_PHY_AIC_CAL_COM_ATT_DB_FIXED)));

	FUNC3(ah, AR_PHY_AIC_CTRL_4_B1,
		  (FUNC4(2, AR_PHY_AIC_CAL_ROT_ATT_DB_EST_ISO) |
		   FUNC4(3, AR_PHY_AIC_CAL_COM_ATT_DB_EST_ISO) |
		   FUNC4(0, AR_PHY_AIC_CAL_ISO_EST_INIT_SETTING) |
		   FUNC4(2, AR_PHY_AIC_CAL_COM_ATT_DB_BACKOFF) |
		   FUNC4(1, AR_PHY_AIC_CAL_COM_ATT_DB_FIXED)));

	FUNC5(ah);

	/* Need to enable AIC reference signal in BT modem. */
	FUNC3(ah, ATH_AIC_BT_JUPITER_CTRL,
		  (FUNC1(ah, ATH_AIC_BT_JUPITER_CTRL) |
		   ATH_AIC_BT_AIC_ENABLE));

	aic->aic_cal_start_time = FUNC1(ah, AR_TSF_L32);

	/* Start calibration */
	FUNC0(ah, AR_PHY_AIC_CTRL_0_B1, AR_PHY_AIC_CAL_ENABLE);
	FUNC2(ah, AR_PHY_AIC_CTRL_0_B1, AR_PHY_AIC_CAL_CH_VALID_RESET);
	FUNC2(ah, AR_PHY_AIC_CTRL_0_B1, AR_PHY_AIC_CAL_ENABLE);

	aic->aic_caled_chan = 0;
	aic->aic_cal_state = AIC_CAL_STATE_STARTED;

	return aic->aic_cal_state;
}