#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct timespec64 {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  ext_channel; } ;
struct TYPE_9__ {int rimt_last; int rimt_first; int hw_hang_checks; scalar_t__ tx_intr_mitigation; scalar_t__ rx_intr_mitigation; } ;
struct TYPE_8__ {int hw_caps; } ;
struct ath_hw {int chip_fullsleep; int paprd_table_write_done; int htc_reset_init; TYPE_6__ radar_conf; TYPE_5__* hw; TYPE_3__ config; int /*<<< orphan*/  rfkill_gpio; TYPE_2__ caps; int /*<<< orphan*/  opmode; TYPE_1__* eep_ops; int /*<<< orphan*/  noise; struct ath9k_hw_cal_data* caldata; scalar_t__ curchan; } ;
struct ath_common {scalar_t__ bt_ant_diversity; } ;
struct ath9k_hw_cal_data {scalar_t__ channel; scalar_t__ channelFlags; int /*<<< orphan*/  cal_flags; } ;
struct ath9k_channel {scalar_t__ channel; scalar_t__ channelFlags; int /*<<< orphan*/  noisefloor; } ;
struct TYPE_10__ {scalar_t__ radar_enabled; } ;
struct TYPE_11__ {TYPE_4__ conf; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_board_values ) (struct ath_hw*,struct ath9k_channel*) ;} ;

/* Variables and functions */
 scalar_t__ AR9271_GATE_MAC_CTL ; 
 scalar_t__ AR9271_RADIO_RF_RST ; 
 int /*<<< orphan*/  AR9271_RESET_POWER_DOWN_CONTROL ; 
 int AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL ; 
 int /*<<< orphan*/  AR_AHB_CUSTOM_BURST_EN ; 
 int /*<<< orphan*/  AR_AHB_MODE ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_LNADIV ; 
 int /*<<< orphan*/  AR_BTCOEX_WL_LNADIV_FORCE_ON ; 
 int /*<<< orphan*/  AR_CFG_LED ; 
 scalar_t__ AR_CFG_LED_ASSOC_CTL ; 
 scalar_t__ AR_CFG_LED_BLINK_SLOW ; 
 scalar_t__ AR_CFG_LED_BLINK_THRESH_SEL ; 
 scalar_t__ AR_CFG_LED_MODE_SEL ; 
 scalar_t__ AR_CFG_SCLK_32KHZ ; 
 int /*<<< orphan*/  AR_DEF_ANTENNA ; 
 int /*<<< orphan*/  AR_GPIO_INPUT_EN_VAL ; 
 int /*<<< orphan*/  AR_GPIO_JTAG_DISABLE ; 
 int /*<<< orphan*/  AR_MAC_PCU_LOGIC_ANALYZER ; 
 int /*<<< orphan*/  AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768 ; 
 int /*<<< orphan*/  AR_OBS ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2 ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2_ENABLE_AGGWEP ; 
 int /*<<< orphan*/  AR_RIMT ; 
 int /*<<< orphan*/  AR_RIMT_FIRST ; 
 int /*<<< orphan*/  AR_RIMT_LAST ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 scalar_t__ AR_STA_ID1_BASE_RATE_11B ; 
 int /*<<< orphan*/  AR_STA_ID1_PRESERVE_SEQNUM ; 
 int /*<<< orphan*/  AR_TIMT ; 
 int /*<<< orphan*/  AR_TIMT_FIRST ; 
 int /*<<< orphan*/  AR_TIMT_LAST ; 
 int ATH9K_HW_CAP_RFSILENT ; 
 int /*<<< orphan*/  ATH9K_PM_AWAKE ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int HW_PHYRESTART_CLC_WAR ; 
 int /*<<< orphan*/  FUNC9 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  PAPRD_PACKET_SENT ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 scalar_t__ FUNC12 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TXCLCAL_DONE ; 
 int /*<<< orphan*/  TXIQCAL_DONE ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_hw*) ; 
 scalar_t__ FUNC21 (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct ath_hw*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC24 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC26 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC27 (struct ath_hw*) ; 
 scalar_t__ FUNC28 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC29 (struct ath_hw*,struct ath9k_channel*) ; 
 struct ath_common* FUNC30 (struct ath_hw*) ; 
 int FUNC31 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC32 (struct ath_hw*) ; 
 scalar_t__ FUNC33 (struct timespec64*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct ath_hw*,struct ath9k_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct ath_hw*,scalar_t__) ; 
 scalar_t__ FUNC36 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC37 (struct ath_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC38 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC39 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC40 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC41 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC42 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC44 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC45 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC46 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC47 (struct ath_hw*) ; 
 scalar_t__ FUNC48 (struct ath_hw*) ; 
 int FUNC49 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC50 (struct ath_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC51 (struct ath_hw*) ; 
 int FUNC52 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC53 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC54 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC55 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC56 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC57 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC58 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC59 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC60 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC61 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC62 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC63 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC64 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC65 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC66 (struct ath9k_hw_cal_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC67 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC68 (int) ; 

int FUNC69(struct ath_hw *ah, struct ath9k_channel *chan,
		   struct ath9k_hw_cal_data *caldata, bool fastcc)
{
	struct ath_common *common = FUNC30(ah);
	u32 saveLedState;
	u32 saveDefAntenna;
	u32 macStaId1;
	struct timespec64 tsf_ts;
	u32 tsf_offset;
	u64 tsf = 0;
	int r;
	bool start_mci_reset = false;
	bool save_fullsleep = ah->chip_fullsleep;

	if (FUNC48(ah)) {
		start_mci_reset = FUNC23(ah, chan);
		if (start_mci_reset)
			return 0;
	}

	if (!FUNC58(ah, ATH9K_PM_AWAKE))
		return -EIO;

	if (ah->curchan && !ah->chip_fullsleep)
		FUNC35(ah, ah->curchan);

	ah->caldata = caldata;
	if (caldata && (chan->channel != caldata->channel ||
			chan->channelFlags != caldata->channelFlags)) {
		/* Operating channel changed, reset channel calibration data */
		FUNC66(caldata, 0, sizeof(*caldata));
		FUNC62(ah, chan);
	} else if (caldata) {
		FUNC64(PAPRD_PACKET_SENT, &caldata->cal_flags);
	}
	ah->noise = FUNC34(ah, chan, chan->noisefloor);

	if (fastcc) {
		r = FUNC31(ah, chan);
		if (!r)
			return r;
	}

	if (FUNC48(ah))
		FUNC24(ah, save_fullsleep);

	saveDefAntenna = FUNC12(ah, AR_DEF_ANTENNA);
	if (saveDefAntenna == 0)
		saveDefAntenna = 1;

	macStaId1 = FUNC12(ah, AR_STA_ID1) & AR_STA_ID1_BASE_RATE_11B;

	/* Save TSF before chip reset, a cold reset clears it */
	FUNC65(&tsf_ts);
	tsf = FUNC36(ah);

	saveLedState = FUNC12(ah, AR_CFG_LED) &
		(AR_CFG_LED_ASSOC_CTL | AR_CFG_LED_MODE_SEL |
		 AR_CFG_LED_BLINK_THRESH_SEL | AR_CFG_LED_BLINK_SLOW);

	FUNC47(ah);

	ah->paprd_table_write_done = false;

	/* Only required on the first reset */
	if (FUNC1(ah) && ah->htc_reset_init) {
		FUNC16(ah,
			  AR9271_RESET_POWER_DOWN_CONTROL,
			  AR9271_RADIO_RF_RST);
		FUNC68(50);
	}

	if (!FUNC29(ah, chan)) {
		FUNC63(common, "Chip reset failed\n");
		return -EINVAL;
	}

	/* Only required on the first reset */
	if (FUNC1(ah) && ah->htc_reset_init) {
		ah->htc_reset_init = false;
		FUNC16(ah,
			  AR9271_RESET_POWER_DOWN_CONTROL,
			  AR9271_GATE_MAC_CTL);
		FUNC68(50);
	}

	/* Restore TSF */
	tsf_offset = FUNC33(&tsf_ts, NULL);
	FUNC59(ah, tsf + tsf_offset);

	if (FUNC2(ah))
		FUNC15(ah, AR_GPIO_INPUT_EN_VAL, AR_GPIO_JTAG_DISABLE);

	if (!FUNC5(ah))
		FUNC17(ah);

	r = FUNC49(ah, chan);
	if (r)
		return r;

	FUNC57(ah, chan);

	if (FUNC48(ah))
		FUNC22(ah, false, FUNC9(chan), save_fullsleep);

	/*
	 * Some AR91xx SoC devices frequently fail to accept TSF writes
	 * right after the chip reset. When that happens, write a new
	 * value after the initvals have been applied.
	 */
	if (FUNC0(ah) && (FUNC36(ah) < tsf)) {
		tsf_offset = FUNC33(&tsf_ts, NULL);
		FUNC59(ah, tsf + tsf_offset);
	}

	FUNC43(ah);

	FUNC54(ah, chan);
	FUNC60(ah, chan);
	ah->eep_ops->set_board_values(ah, chan);

	FUNC50(ah, macStaId1, saveDefAntenna);

	r = FUNC52(ah, chan);
	if (r)
		return r;

	FUNC53(ah);

	FUNC45(ah);
	FUNC42(ah, ah->opmode);
	FUNC25(ah);
	FUNC44(ah);

	if (ah->caps.hw_caps & ATH9K_HW_CAP_RFSILENT)
		FUNC37(ah, ah->rfkill_gpio, "ath9k-rfkill");

	FUNC41(ah);

	if (FUNC3(ah) && FUNC4(ah)) {
		FUNC15(ah, AR_MAC_PCU_LOGIC_ANALYZER,
			    AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768);
		FUNC14(ah, AR_AHB_MODE, AR_AHB_CUSTOM_BURST_EN,
			      AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL);
		FUNC15(ah, AR_PCU_MISC_MODE2,
			    AR_PCU_MISC_MODE2_ENABLE_AGGWEP);
	}

	FUNC15(ah, AR_STA_ID1, AR_STA_ID1_PRESERVE_SEQNUM);

	FUNC55(ah);

	if (!FUNC48(ah))
		FUNC16(ah, AR_OBS, 8);

	FUNC8(ah);
	if (ah->config.rx_intr_mitigation) {
		FUNC14(ah, AR_RIMT, AR_RIMT_LAST, ah->config.rimt_last);
		FUNC14(ah, AR_RIMT, AR_RIMT_FIRST, ah->config.rimt_first);
	}

	if (ah->config.tx_intr_mitigation) {
		FUNC14(ah, AR_TIMT, AR_TIMT_LAST, 300);
		FUNC14(ah, AR_TIMT, AR_TIMT_FIRST, 750);
	}
	FUNC13(ah);

	FUNC38(ah, chan);

	if (caldata) {
		FUNC64(TXIQCAL_DONE, &caldata->cal_flags);
		FUNC64(TXCLCAL_DONE, &caldata->cal_flags);
	}
	if (!FUNC39(ah, chan))
		return -EIO;

	if (FUNC48(ah) && FUNC21(ah, chan, caldata))
		return -EIO;

	FUNC7(ah);

	FUNC51(ah);
	FUNC16(ah, AR_CFG_LED, saveLedState | AR_CFG_SCLK_32KHZ);

	FUNC11(ah);

	FUNC32(ah);

	FUNC40(ah);

	if (FUNC28(ah))
		FUNC27(ah);

	if (FUNC48(ah))
		FUNC20(ah);

	if (FUNC5(ah)) {
		FUNC46(ah, chan);
		FUNC61(ah, true);
	}

	if (FUNC5(ah))
		FUNC18(ah);

	if (ah->config.hw_hang_checks & HW_PHYRESTART_CLC_WAR)
		FUNC19(ah);

	FUNC26(ah);

	if (FUNC6(ah) && common->bt_ant_diversity)
		FUNC15(ah, AR_BTCOEX_WL_LNADIV, AR_BTCOEX_WL_LNADIV_FORCE_ON);

	if (ah->hw->conf.radar_enabled) {
		/* set HW specific DFS configuration */
		ah->radar_conf.ext_channel = FUNC10(chan);
		FUNC56(ah);
	}

	return 0;
}