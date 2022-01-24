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
struct stats_rx_phy {int /*<<< orphan*/  plcp_err; int /*<<< orphan*/  false_alarm_cnt; } ;
struct stats_rx_non_phy {scalar_t__ interference_data_flag; int /*<<< orphan*/  beacon_energy_c; int /*<<< orphan*/  beacon_energy_b; int /*<<< orphan*/  beacon_energy_a; int /*<<< orphan*/  beacon_silence_rssi_c; int /*<<< orphan*/  beacon_silence_rssi_b; int /*<<< orphan*/  beacon_silence_rssi_a; int /*<<< orphan*/  channel_load; } ;
struct stats_general_data {void* beacon_energy_c; void* beacon_energy_b; void* beacon_energy_a; void* beacon_silence_rssi_c; void* beacon_silence_rssi_b; void* beacon_silence_rssi_a; } ;
struct il_sensitivity_data {scalar_t__ last_bad_plcp_cnt_cck; scalar_t__ last_bad_plcp_cnt_ofdm; scalar_t__ last_fa_cnt_ofdm; scalar_t__ last_fa_cnt_cck; } ;
struct il_priv {int /*<<< orphan*/  lock; struct il_sensitivity_data sensitivity_data; scalar_t__ disable_sens_cal; } ;
struct TYPE_2__ {struct stats_rx_phy cck; struct stats_rx_phy ofdm; struct stats_rx_non_phy general; } ;
struct il_notif_stats {TYPE_1__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ INTERFERENCE_DATA_AVAILABLE ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,scalar_t__,scalar_t__,struct stats_general_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC8(struct il_priv *il, void *resp)
{
	u32 rx_enable_time;
	u32 fa_cck;
	u32 fa_ofdm;
	u32 bad_plcp_cck;
	u32 bad_plcp_ofdm;
	u32 norm_fa_ofdm;
	u32 norm_fa_cck;
	struct il_sensitivity_data *data = NULL;
	struct stats_rx_non_phy *rx_info;
	struct stats_rx_phy *ofdm, *cck;
	unsigned long flags;
	struct stats_general_data statis;

	if (il->disable_sens_cal)
		return;

	data = &(il->sensitivity_data);

	if (!FUNC4(il)) {
		FUNC0("<< - not associated\n");
		return;
	}

	FUNC6(&il->lock, flags);

	rx_info = &(((struct il_notif_stats *)resp)->rx.general);
	ofdm = &(((struct il_notif_stats *)resp)->rx.ofdm);
	cck = &(((struct il_notif_stats *)resp)->rx.cck);

	if (rx_info->interference_data_flag != INTERFERENCE_DATA_AVAILABLE) {
		FUNC0("<< invalid data.\n");
		FUNC7(&il->lock, flags);
		return;
	}

	/* Extract Statistics: */
	rx_enable_time = FUNC5(rx_info->channel_load);
	fa_cck = FUNC5(cck->false_alarm_cnt);
	fa_ofdm = FUNC5(ofdm->false_alarm_cnt);
	bad_plcp_cck = FUNC5(cck->plcp_err);
	bad_plcp_ofdm = FUNC5(ofdm->plcp_err);

	statis.beacon_silence_rssi_a =
	    FUNC5(rx_info->beacon_silence_rssi_a);
	statis.beacon_silence_rssi_b =
	    FUNC5(rx_info->beacon_silence_rssi_b);
	statis.beacon_silence_rssi_c =
	    FUNC5(rx_info->beacon_silence_rssi_c);
	statis.beacon_energy_a = FUNC5(rx_info->beacon_energy_a);
	statis.beacon_energy_b = FUNC5(rx_info->beacon_energy_b);
	statis.beacon_energy_c = FUNC5(rx_info->beacon_energy_c);

	FUNC7(&il->lock, flags);

	FUNC0("rx_enable_time = %u usecs\n", rx_enable_time);

	if (!rx_enable_time) {
		FUNC0("<< RX Enable Time == 0!\n");
		return;
	}

	/* These stats increase monotonically, and do not reset
	 *   at each beacon.  Calculate difference from last value, or just
	 *   use the new stats value if it has reset or wrapped around. */
	if (data->last_bad_plcp_cnt_cck > bad_plcp_cck)
		data->last_bad_plcp_cnt_cck = bad_plcp_cck;
	else {
		bad_plcp_cck -= data->last_bad_plcp_cnt_cck;
		data->last_bad_plcp_cnt_cck += bad_plcp_cck;
	}

	if (data->last_bad_plcp_cnt_ofdm > bad_plcp_ofdm)
		data->last_bad_plcp_cnt_ofdm = bad_plcp_ofdm;
	else {
		bad_plcp_ofdm -= data->last_bad_plcp_cnt_ofdm;
		data->last_bad_plcp_cnt_ofdm += bad_plcp_ofdm;
	}

	if (data->last_fa_cnt_ofdm > fa_ofdm)
		data->last_fa_cnt_ofdm = fa_ofdm;
	else {
		fa_ofdm -= data->last_fa_cnt_ofdm;
		data->last_fa_cnt_ofdm += fa_ofdm;
	}

	if (data->last_fa_cnt_cck > fa_cck)
		data->last_fa_cnt_cck = fa_cck;
	else {
		fa_cck -= data->last_fa_cnt_cck;
		data->last_fa_cnt_cck += fa_cck;
	}

	/* Total aborted signal locks */
	norm_fa_ofdm = fa_ofdm + bad_plcp_ofdm;
	norm_fa_cck = fa_cck + bad_plcp_cck;

	FUNC0("cck: fa %u badp %u  ofdm: fa %u badp %u\n", fa_cck,
		bad_plcp_cck, fa_ofdm, bad_plcp_ofdm);

	FUNC1(il, norm_fa_ofdm, rx_enable_time);
	FUNC2(il, norm_fa_cck, rx_enable_time, &statis);

	FUNC3(il);
}