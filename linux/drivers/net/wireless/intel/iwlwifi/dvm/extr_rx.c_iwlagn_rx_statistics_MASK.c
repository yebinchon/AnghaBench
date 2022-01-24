#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct statistics_tx {scalar_t__ temperature; } ;
struct statistics_rx_phy {scalar_t__ temperature; } ;
struct statistics_rx_non_phy {scalar_t__ temperature; } ;
struct statistics_rx_ht_phy {scalar_t__ temperature; } ;
struct statistics_general_common {scalar_t__ temperature; } ;
struct statistics_bt_activity {scalar_t__ temperature; } ;
struct TYPE_15__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {TYPE_6__ hdr; int /*<<< orphan*/  data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct TYPE_18__ {scalar_t__ temperature; } ;
struct TYPE_17__ {int flag; int /*<<< orphan*/  lock; TYPE_9__ bt_activity; TYPE_9__ tx; TYPE_9__ rx_cck; TYPE_9__ rx_ofdm_ht; TYPE_9__ rx_ofdm; TYPE_9__ rx_non_phy; TYPE_9__ common; int /*<<< orphan*/  accum_num_bt_kills; int /*<<< orphan*/  num_bt_kills; } ;
struct iwl_priv {unsigned long rx_statistics_jiffies; TYPE_8__ statistics; TYPE_7__* lib; int /*<<< orphan*/  run_time_calib_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  status; int /*<<< orphan*/  statistics_periodic; } ;
struct TYPE_14__ {struct statistics_tx cck; struct statistics_tx ofdm_ht; struct statistics_tx ofdm; struct statistics_tx general; } ;
struct TYPE_13__ {struct statistics_tx common; } ;
struct iwl_notif_statistics {int flag; struct statistics_tx tx; TYPE_5__ rx; TYPE_4__ general; } ;
struct TYPE_11__ {int /*<<< orphan*/  num_bt_kills; struct statistics_tx common; } ;
struct TYPE_12__ {TYPE_2__ general; struct statistics_tx cck; struct statistics_tx ofdm_ht; struct statistics_tx ofdm; } ;
struct TYPE_10__ {struct statistics_tx activity; struct statistics_tx common; } ;
struct iwl_bt_notif_statistics {int flag; TYPE_3__ rx; TYPE_1__ general; struct statistics_tx tx; } ;
typedef  int __le32 ;
struct TYPE_16__ {int /*<<< orphan*/  (* temperature ) (struct iwl_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int) ; 
 scalar_t__ STATISTICS_NOTIFICATION ; 
 int STATISTICS_REPLY_FLG_HT40_MODE_MSK ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  STATUS_STATISTICS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int,int) ; 
 int FUNC2 (struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,struct statistics_tx*,struct statistics_tx*,struct statistics_tx*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,struct statistics_tx*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iwl_rx_packet* FUNC12 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(struct iwl_priv *priv,
				 struct iwl_rx_cmd_buffer *rxb)
{
	unsigned long stamp = jiffies;
	const int reg_recalib_period = 60;
	int change;
	struct iwl_rx_packet *pkt = FUNC12(rxb);
	u32 len = FUNC2(pkt);
	__le32 *flag;
	struct statistics_general_common *common;
	struct statistics_rx_non_phy *rx_non_phy;
	struct statistics_rx_phy *rx_ofdm;
	struct statistics_rx_ht_phy *rx_ofdm_ht;
	struct statistics_rx_phy *rx_cck;
	struct statistics_tx *tx;
	struct statistics_bt_activity *bt_activity;

	FUNC0(priv, "Statistics notification received (%d bytes).\n",
		     len);

	FUNC14(&priv->statistics.lock);

	if (len == sizeof(struct iwl_bt_notif_statistics)) {
		struct iwl_bt_notif_statistics *stats;
		stats = (void *)&pkt->data;
		flag = &stats->flag;
		common = &stats->general.common;
		rx_non_phy = &stats->rx.general.common;
		rx_ofdm = &stats->rx.ofdm;
		rx_ofdm_ht = &stats->rx.ofdm_ht;
		rx_cck = &stats->rx.cck;
		tx = &stats->tx;
		bt_activity = &stats->general.activity;

#ifdef CONFIG_IWLWIFI_DEBUGFS
		/* handle this exception directly */
		priv->statistics.num_bt_kills = stats->rx.general.num_bt_kills;
		le32_add_cpu(&priv->statistics.accum_num_bt_kills,
			     le32_to_cpu(stats->rx.general.num_bt_kills));
#endif
	} else if (len == sizeof(struct iwl_notif_statistics)) {
		struct iwl_notif_statistics *stats;
		stats = (void *)&pkt->data;
		flag = &stats->flag;
		common = &stats->general.common;
		rx_non_phy = &stats->rx.general;
		rx_ofdm = &stats->rx.ofdm;
		rx_ofdm_ht = &stats->rx.ofdm_ht;
		rx_cck = &stats->rx.cck;
		tx = &stats->tx;
		bt_activity = NULL;
	} else {
		FUNC1(1, "len %d doesn't match BT (%zu) or normal (%zu)\n",
			  len, sizeof(struct iwl_bt_notif_statistics),
			  sizeof(struct iwl_notif_statistics));
		FUNC15(&priv->statistics.lock);
		return;
	}

	change = common->temperature != priv->statistics.common.temperature ||
		 (*flag & STATISTICS_REPLY_FLG_HT40_MODE_MSK) !=
		 (priv->statistics.flag & STATISTICS_REPLY_FLG_HT40_MODE_MSK);

	FUNC3(priv, common, rx_non_phy, rx_ofdm,
				    rx_ofdm_ht, rx_cck, tx, bt_activity);

	FUNC4(priv, rx_ofdm, rx_ofdm_ht, tx, stamp);

	priv->statistics.flag = *flag;
	FUNC8(&priv->statistics.common, common, sizeof(*common));
	FUNC8(&priv->statistics.rx_non_phy, rx_non_phy, sizeof(*rx_non_phy));
	FUNC8(&priv->statistics.rx_ofdm, rx_ofdm, sizeof(*rx_ofdm));
	FUNC8(&priv->statistics.rx_ofdm_ht, rx_ofdm_ht, sizeof(*rx_ofdm_ht));
	FUNC8(&priv->statistics.rx_cck, rx_cck, sizeof(*rx_cck));
	FUNC8(&priv->statistics.tx, tx, sizeof(*tx));
#ifdef CONFIG_IWLWIFI_DEBUGFS
	if (bt_activity)
		memcpy(&priv->statistics.bt_activity, bt_activity,
			sizeof(*bt_activity));
#endif

	priv->rx_statistics_jiffies = stamp;

	FUNC13(STATUS_STATISTICS, &priv->status);

	/* Reschedule the statistics timer to occur in
	 * reg_recalib_period seconds to ensure we get a
	 * thermal update even if the uCode doesn't give
	 * us one */
	FUNC9(&priv->statistics_periodic, jiffies +
		  FUNC10(reg_recalib_period * 1000));

	if (FUNC18(!FUNC17(STATUS_SCANNING, &priv->status)) &&
	    (pkt->hdr.cmd == STATISTICS_NOTIFICATION)) {
		FUNC5(priv);
		FUNC11(priv->workqueue, &priv->run_time_calib_work);
	}
	if (priv->lib->temperature && change)
		priv->lib->temperature(priv);

	FUNC15(&priv->statistics.lock);
}