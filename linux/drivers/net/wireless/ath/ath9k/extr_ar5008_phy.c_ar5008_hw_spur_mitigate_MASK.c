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
struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath9k_channel {int channel; } ;
struct TYPE_2__ {int (* get_spur_channel ) (struct ath_hw*,int,int) ;} ;

/* Variables and functions */
 int AR_EEPROM_MODAL_SPURS ; 
 int AR_NO_SPUR ; 
 int /*<<< orphan*/  AR_PHY_SPUR_REG ; 
 int AR_PHY_SPUR_REG_ENABLE_MASK_PPM ; 
 int AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI ; 
 int AR_PHY_SPUR_REG_MASK_RATE_CNTL ; 
 int AR_PHY_SPUR_REG_MASK_RATE_SELECT ; 
 int AR_PHY_SPUR_REG_SPUR_RSSI_THRESH ; 
 int /*<<< orphan*/  AR_PHY_TIMING11 ; 
 int AR_PHY_TIMING11_SPUR_DELTA_PHASE ; 
 int AR_PHY_TIMING11_SPUR_FREQ_SD ; 
 int AR_PHY_TIMING11_USE_SPUR_IN_AGC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK ; 
 int AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK ; 
 int AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER ; 
 int AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI ; 
 int FUNC1 (struct ath9k_channel*) ; 
 int FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int SPUR_RSSI_THRESH ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,struct ath9k_channel*,int) ; 
 int FUNC6 (struct ath_hw*,int,int) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah,
				    struct ath9k_channel *chan)
{
	int bb_spur = AR_NO_SPUR;
	int bin;
	int spur_freq_sd;
	int spur_delta_phase;
	int denominator;
	int tmp, new;
	int i;

	int cur_bb_spur;
	bool is2GHz = FUNC1(chan);

	for (i = 0; i < AR_EEPROM_MODAL_SPURS; i++) {
		cur_bb_spur = ah->eep_ops->get_spur_channel(ah, i, is2GHz);
		if (AR_NO_SPUR == cur_bb_spur)
			break;
		cur_bb_spur = cur_bb_spur - (chan->channel * 10);
		if ((cur_bb_spur > -95) && (cur_bb_spur < 95)) {
			bb_spur = cur_bb_spur;
			break;
		}
	}

	if (AR_NO_SPUR == bb_spur)
		return;

	bin = bb_spur * 32;

	tmp = FUNC2(ah, FUNC0(0));
	new = tmp | (AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI |
		     AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER |
		     AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK |
		     AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK);

	FUNC3(ah, FUNC0(0), new);

	new = (AR_PHY_SPUR_REG_MASK_RATE_CNTL |
	       AR_PHY_SPUR_REG_ENABLE_MASK_PPM |
	       AR_PHY_SPUR_REG_MASK_RATE_SELECT |
	       AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI |
	       FUNC4(SPUR_RSSI_THRESH, AR_PHY_SPUR_REG_SPUR_RSSI_THRESH));
	FUNC3(ah, AR_PHY_SPUR_REG, new);

	spur_delta_phase = ((bb_spur * 524288) / 100) &
		AR_PHY_TIMING11_SPUR_DELTA_PHASE;

	denominator = FUNC1(chan) ? 440 : 400;
	spur_freq_sd = ((bb_spur * 2048) / denominator) & 0x3ff;

	new = (AR_PHY_TIMING11_USE_SPUR_IN_AGC |
	       FUNC4(spur_freq_sd, AR_PHY_TIMING11_SPUR_FREQ_SD) |
	       FUNC4(spur_delta_phase, AR_PHY_TIMING11_SPUR_DELTA_PHASE));
	FUNC3(ah, AR_PHY_TIMING11, new);

	FUNC5(ah, chan, bin);
}