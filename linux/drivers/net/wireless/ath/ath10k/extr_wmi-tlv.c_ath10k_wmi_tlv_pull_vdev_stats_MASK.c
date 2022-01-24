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
struct wmi_tlv_vdev_stats {int /*<<< orphan*/ * beacon_rssi_history; int /*<<< orphan*/ * tx_rate_history; int /*<<< orphan*/ * num_tx_frames_failures; int /*<<< orphan*/ * num_tx_frames_retries; int /*<<< orphan*/ * num_tx_frames; int /*<<< orphan*/  num_tx_not_acked; int /*<<< orphan*/  num_rx_discard; int /*<<< orphan*/  num_rx_err; int /*<<< orphan*/  num_rts_success; int /*<<< orphan*/  num_rts_fail; int /*<<< orphan*/  num_rx_frames; int /*<<< orphan*/  data_snr; int /*<<< orphan*/  beacon_snr; int /*<<< orphan*/  vdev_id; } ;
struct ath10k_fw_stats_vdev {void** beacon_rssi_history; void** tx_rate_history; void** num_tx_frames_failures; void** num_tx_frames_retries; void** num_tx_frames; void* num_tx_not_acked; void* num_rx_discard; void* num_rx_err; void* num_rts_success; void* num_rts_fail; void* num_rx_frames; void* data_snr; void* beacon_snr; void* vdev_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct wmi_tlv_vdev_stats *src,
					   struct ath10k_fw_stats_vdev *dst)
{
	int i;

	dst->vdev_id = FUNC1(src->vdev_id);
	dst->beacon_snr = FUNC1(src->beacon_snr);
	dst->data_snr = FUNC1(src->data_snr);
	dst->num_rx_frames = FUNC1(src->num_rx_frames);
	dst->num_rts_fail = FUNC1(src->num_rts_fail);
	dst->num_rts_success = FUNC1(src->num_rts_success);
	dst->num_rx_err = FUNC1(src->num_rx_err);
	dst->num_rx_discard = FUNC1(src->num_rx_discard);
	dst->num_tx_not_acked = FUNC1(src->num_tx_not_acked);

	for (i = 0; i < FUNC0(src->num_tx_frames); i++)
		dst->num_tx_frames[i] =
			FUNC1(src->num_tx_frames[i]);

	for (i = 0; i < FUNC0(src->num_tx_frames_retries); i++)
		dst->num_tx_frames_retries[i] =
			FUNC1(src->num_tx_frames_retries[i]);

	for (i = 0; i < FUNC0(src->num_tx_frames_failures); i++)
		dst->num_tx_frames_failures[i] =
			FUNC1(src->num_tx_frames_failures[i]);

	for (i = 0; i < FUNC0(src->tx_rate_history); i++)
		dst->tx_rate_history[i] =
			FUNC1(src->tx_rate_history[i]);

	for (i = 0; i < FUNC0(src->beacon_rssi_history); i++)
		dst->beacon_rssi_history[i] =
			FUNC1(src->beacon_rssi_history[i]);
}