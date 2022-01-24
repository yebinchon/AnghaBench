#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_9__ {TYPE_3__* clip_groups; } ;
struct il_priv {int temperature; size_t channel_count; TYPE_5__* ops; TYPE_4__ _3945; struct il_channel_info* channel_info; int /*<<< orphan*/  status; scalar_t__ disable_tx_power_cal; scalar_t__ eeprom; } ;
struct il_channel_info {size_t group_idx; TYPE_2__* power_info; } ;
struct il3945_eeprom {TYPE_1__* groups; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int s16 ;
struct TYPE_10__ {int (* send_tx_power ) (struct il_priv*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/ * clip_powers; } ;
struct TYPE_7__ {int base_power_idx; size_t power_table_idx; int /*<<< orphan*/  tpc; } ;
struct TYPE_6__ {scalar_t__ temperature; } ;

/* Variables and functions */
 size_t IL_NUM_SCAN_RATES ; 
 int /*<<< orphan*/  RATE_1M_IDX_TBL ; 
 int /*<<< orphan*/  RATE_6M_IDX_TBL ; 
 size_t RATE_COUNT_3945 ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,struct il_channel_info*,size_t) ; 
 size_t FUNC3 (struct il_channel_info*) ; 
 int /*<<< orphan*/ ** power_gain_table ; 
 int FUNC4 (struct il_priv*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il)
{
	struct il_channel_info *ch_info = NULL;
	struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;
	int delta_idx;
	const s8 *clip_pwrs;	/* array of h/w max power levels for each rate */
	u8 a_band;
	u8 rate_idx;
	u8 scan_tbl_idx;
	u8 i;
	int ref_temp;
	int temperature = il->temperature;

	if (il->disable_tx_power_cal || FUNC5(S_SCANNING, &il->status)) {
		/* do not perform tx power calibration */
		return 0;
	}
	/* set up new Tx power info for each and every channel, 2.4 and 5.x */
	for (i = 0; i < il->channel_count; i++) {
		ch_info = &il->channel_info[i];
		a_band = FUNC3(ch_info);

		/* Get this chnlgrp's factory calibration temperature */
		ref_temp = (s16) eeprom->groups[ch_info->group_idx].temperature;

		/* get power idx adjustment based on current and factory
		 * temps */
		delta_idx =
		    FUNC0(temperature, ref_temp);

		/* set tx power value for all rates, OFDM and CCK */
		for (rate_idx = 0; rate_idx < RATE_COUNT_3945; rate_idx++) {
			int power_idx =
			    ch_info->power_info[rate_idx].base_power_idx;

			/* temperature compensate */
			power_idx += delta_idx;

			/* stay within table range */
			power_idx = FUNC1(power_idx);
			ch_info->power_info[rate_idx].power_table_idx =
			    (u8) power_idx;
			ch_info->power_info[rate_idx].tpc =
			    power_gain_table[a_band][power_idx];
		}

		/* Get this chnlgrp's rate-to-max/clip-powers table */
		clip_pwrs =
		    il->_3945.clip_groups[ch_info->group_idx].clip_powers;

		/* set scan tx power, 1Mbit for CCK, 6Mbit for OFDM */
		for (scan_tbl_idx = 0; scan_tbl_idx < IL_NUM_SCAN_RATES;
		     scan_tbl_idx++) {
			s32 actual_idx =
			    (scan_tbl_idx ==
			     0) ? RATE_1M_IDX_TBL : RATE_6M_IDX_TBL;
			FUNC2(il, scan_tbl_idx,
						     actual_idx, clip_pwrs,
						     ch_info, a_band);
		}
	}

	/* send Txpower command for current channel to ucode */
	return il->ops->send_tx_power(il);
}