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
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_get_stats {void* bcn_miss_cnt; void* bcn_rcv_cnt; void** wep_icv_error; void* tx_frame; void* fcs_error; void* mcast_rx_frame; void* rx_frag; void* ack_failure; void* rts_failure; void* rts_success; void* frame_dup; void* multi_retry; void* retry; void* failed; void* mcast_tx_frame; } ;
struct host_cmd_ds_802_11_get_log {int /*<<< orphan*/  bcn_miss_cnt; int /*<<< orphan*/  bcn_rcv_cnt; int /*<<< orphan*/ * wep_icv_err_cnt; int /*<<< orphan*/  tx_frame; int /*<<< orphan*/  fcs_error; int /*<<< orphan*/  mcast_rx_frame; int /*<<< orphan*/  rx_frag; int /*<<< orphan*/  ack_failure; int /*<<< orphan*/  rts_failure; int /*<<< orphan*/  rts_success; int /*<<< orphan*/  frame_dup; int /*<<< orphan*/  multi_retry; int /*<<< orphan*/  retry; int /*<<< orphan*/  failed; int /*<<< orphan*/  mcast_tx_frame; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_get_log get_log; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mwifiex_private *priv,
			       struct host_cmd_ds_command *resp,
			       struct mwifiex_ds_get_stats *stats)
{
	struct host_cmd_ds_802_11_get_log *get_log =
		&resp->params.get_log;

	if (stats) {
		stats->mcast_tx_frame = FUNC0(get_log->mcast_tx_frame);
		stats->failed = FUNC0(get_log->failed);
		stats->retry = FUNC0(get_log->retry);
		stats->multi_retry = FUNC0(get_log->multi_retry);
		stats->frame_dup = FUNC0(get_log->frame_dup);
		stats->rts_success = FUNC0(get_log->rts_success);
		stats->rts_failure = FUNC0(get_log->rts_failure);
		stats->ack_failure = FUNC0(get_log->ack_failure);
		stats->rx_frag = FUNC0(get_log->rx_frag);
		stats->mcast_rx_frame = FUNC0(get_log->mcast_rx_frame);
		stats->fcs_error = FUNC0(get_log->fcs_error);
		stats->tx_frame = FUNC0(get_log->tx_frame);
		stats->wep_icv_error[0] =
			FUNC0(get_log->wep_icv_err_cnt[0]);
		stats->wep_icv_error[1] =
			FUNC0(get_log->wep_icv_err_cnt[1]);
		stats->wep_icv_error[2] =
			FUNC0(get_log->wep_icv_err_cnt[2]);
		stats->wep_icv_error[3] =
			FUNC0(get_log->wep_icv_err_cnt[3]);
		stats->bcn_rcv_cnt = FUNC0(get_log->bcn_rcv_cnt);
		stats->bcn_miss_cnt = FUNC0(get_log->bcn_miss_cnt);
	}

	return 0;
}