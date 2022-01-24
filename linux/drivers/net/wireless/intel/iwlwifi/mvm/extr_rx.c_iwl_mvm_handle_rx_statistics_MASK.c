#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct iwl_rx_packet {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  air_time; int /*<<< orphan*/  byte_count; int /*<<< orphan*/  avg_energy; } ;
struct TYPE_23__ {int /*<<< orphan*/  on_time_scan; int /*<<< orphan*/  on_time_rf; int /*<<< orphan*/  tx_time; int /*<<< orphan*/  rx_time; int /*<<< orphan*/  beacon_filter_average_energy; } ;
struct TYPE_24__ {TYPE_8__ common; } ;
struct TYPE_18__ {int /*<<< orphan*/  mac_id; } ;
struct TYPE_19__ {TYPE_3__ general; } ;
struct iwl_notif_statistics_v11 {TYPE_10__ load_stats; int /*<<< orphan*/  flag; TYPE_9__ general; TYPE_4__ rx; } ;
struct iwl_notif_statistics_v10 {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  air_time; int /*<<< orphan*/  byte_count; int /*<<< orphan*/  avg_energy; } ;
struct TYPE_20__ {int /*<<< orphan*/  mac_id; } ;
struct TYPE_21__ {TYPE_5__ general; } ;
struct iwl_notif_statistics {TYPE_11__ load_stats; int /*<<< orphan*/  flag; TYPE_9__ general; TYPE_6__ rx; } ;
struct TYPE_17__ {int airtime; } ;
struct TYPE_16__ {int rx_bytes; int /*<<< orphan*/  rate; } ;
struct iwl_mvm_tcm_mac {TYPE_2__ rx; TYPE_1__ uapsd_nonagg_detect; } ;
struct iwl_mvm_stat_data {TYPE_9__* general; int /*<<< orphan*/  beacon_filter_average_energy; int /*<<< orphan*/  mac_id; struct iwl_mvm* mvm; } ;
struct iwl_mvm_sta {scalar_t__ avg_energy; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; struct iwl_mvm_tcm_mac* data; } ;
struct TYPE_22__ {void* on_time_scan; void* on_time_rf; void* tx_time; void* rx_time; } ;
struct iwl_mvm {TYPE_12__ tcm; int /*<<< orphan*/  fw_id_to_mac_id; int /*<<< orphan*/  hw; TYPE_7__ radio_stats; TYPE_6__ rx_stats; TYPE_4__ rx_stats_v3; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int IWL_STATISTICS_REPLY_FLG_CLEAR ; 
 int NUM_MAC_INDEX_DRIVER ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_stat_data*) ; 
 scalar_t__ FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct iwl_rx_packet*) ; 
 struct iwl_mvm_sta* FUNC8 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  iwl_mvm_stat_iterator ; 
 int FUNC9 (struct iwl_rx_packet*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct iwl_mvm *mvm,
				  struct iwl_rx_packet *pkt)
{
	struct iwl_mvm_stat_data data = {
		.mvm = mvm,
	};
	int expected_size;
	int i;
	u8 *energy;
	__le32 *bytes;
	__le32 *air_time;
	__le32 flags;

	if (!FUNC6(mvm)) {
		if (FUNC5(mvm))
			expected_size = sizeof(struct iwl_notif_statistics_v11);
		else
			expected_size = sizeof(struct iwl_notif_statistics_v10);
	} else {
		expected_size = sizeof(struct iwl_notif_statistics);
	}

	if (FUNC1(FUNC9(pkt) != expected_size,
		      "received invalid statistics size (%d)!\n",
		      FUNC9(pkt)))
		return;

	if (!FUNC6(mvm)) {
		struct iwl_notif_statistics_v11 *stats = (void *)&pkt->data;

		data.mac_id = stats->rx.general.mac_id;
		data.beacon_filter_average_energy =
			stats->general.common.beacon_filter_average_energy;

		mvm->rx_stats_v3 = stats->rx;

		mvm->radio_stats.rx_time =
			FUNC11(stats->general.common.rx_time);
		mvm->radio_stats.tx_time =
			FUNC11(stats->general.common.tx_time);
		mvm->radio_stats.on_time_rf =
			FUNC11(stats->general.common.on_time_rf);
		mvm->radio_stats.on_time_scan =
			FUNC11(stats->general.common.on_time_scan);

		data.general = &stats->general;

		flags = stats->flag;
	} else {
		struct iwl_notif_statistics *stats = (void *)&pkt->data;

		data.mac_id = stats->rx.general.mac_id;
		data.beacon_filter_average_energy =
			stats->general.common.beacon_filter_average_energy;

		mvm->rx_stats = stats->rx;

		mvm->radio_stats.rx_time =
			FUNC11(stats->general.common.rx_time);
		mvm->radio_stats.tx_time =
			FUNC11(stats->general.common.tx_time);
		mvm->radio_stats.on_time_rf =
			FUNC11(stats->general.common.on_time_rf);
		mvm->radio_stats.on_time_scan =
			FUNC11(stats->general.common.on_time_scan);

		data.general = &stats->general;

		flags = stats->flag;
	}

	FUNC7(mvm, pkt);

	FUNC4(mvm->hw,
					    IEEE80211_IFACE_ITER_NORMAL,
					    iwl_mvm_stat_iterator,
					    &data);

	if (!FUNC5(mvm))
		return;

	if (!FUNC6(mvm)) {
		struct iwl_notif_statistics_v11 *v11 = (void *)&pkt->data;

		energy = (void *)&v11->load_stats.avg_energy;
		bytes = (void *)&v11->load_stats.byte_count;
		air_time = (void *)&v11->load_stats.air_time;
	} else {
		struct iwl_notif_statistics *stats = (void *)&pkt->data;

		energy = (void *)&stats->load_stats.avg_energy;
		bytes = (void *)&stats->load_stats.byte_count;
		air_time = (void *)&stats->load_stats.air_time;
	}

	FUNC12();
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		struct iwl_mvm_sta *sta;

		if (!energy[i])
			continue;

		sta = FUNC8(mvm, i);
		if (!sta)
			continue;
		sta->avg_energy = energy[i];
	}
	FUNC13();

	/*
	 * Don't update in case the statistics are not cleared, since
	 * we will end up counting twice the same airtime, once in TCM
	 * request and once in statistics notification.
	 */
	if (!(FUNC10(flags) & IWL_STATISTICS_REPLY_FLG_CLEAR))
		return;

	FUNC14(&mvm->tcm.lock);
	for (i = 0; i < NUM_MAC_INDEX_DRIVER; i++) {
		struct iwl_mvm_tcm_mac *mdata = &mvm->tcm.data[i];
		u32 airtime = FUNC10(air_time[i]);
		u32 rx_bytes = FUNC10(bytes[i]);

		mdata->uapsd_nonagg_detect.rx_bytes += rx_bytes;
		if (airtime) {
			/* re-init every time to store rate from FW */
			FUNC3(&mdata->uapsd_nonagg_detect.rate);
			FUNC2(&mdata->uapsd_nonagg_detect.rate,
				      rx_bytes * 8 / airtime);
		}

		mdata->rx.airtime += airtime;
	}
	FUNC15(&mvm->tcm.lock);
}