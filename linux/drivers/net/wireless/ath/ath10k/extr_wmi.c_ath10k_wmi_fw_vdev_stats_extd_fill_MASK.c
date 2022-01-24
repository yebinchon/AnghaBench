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
typedef  int u32 ;
struct ath10k_fw_stats_vdev_extd {int tx_ftm_suc; int tx_ftm_suc_retry; int tx_ftm_fail; int rx_ftmr_cnt; int rx_ftmr_dup_cnt; int rx_iftmr_cnt; int rx_iftmr_dup_cnt; int /*<<< orphan*/  mpdu_fail_retry; int /*<<< orphan*/  mpdu_suc_multitry; int /*<<< orphan*/  mpdu_suc_retry; int /*<<< orphan*/  mpdu_sw_requeued; int /*<<< orphan*/  ppdu_nonaggr_cnt; int /*<<< orphan*/  mpdu_queued; int /*<<< orphan*/  ppdu_noack; int /*<<< orphan*/  ppdu_aggr_cnt; int /*<<< orphan*/  vdev_id; } ;

/* Variables and functions */
 int ATH10K_FW_STATS_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_VDEV_STATS_FTM_COUNT ; 
 int WMI_VDEV_STATS_FTM_COUNT_VALID ; 
 int FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static void
FUNC2(const struct ath10k_fw_stats_vdev_extd *vdev,
				   char *buf, u32 *length)
{
	u32 len = *length;
	u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;
	u32 val;

	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "vdev id", vdev->vdev_id);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "ppdu aggr count", vdev->ppdu_aggr_cnt);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "ppdu noack", vdev->ppdu_noack);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "mpdu queued", vdev->mpdu_queued);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "ppdu nonaggr count", vdev->ppdu_nonaggr_cnt);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "mpdu sw requeued", vdev->mpdu_sw_requeued);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "mpdu success retry", vdev->mpdu_suc_retry);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "mpdu success multitry", vdev->mpdu_suc_multitry);
	len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
			 "mpdu fail retry", vdev->mpdu_fail_retry);
	val = vdev->tx_ftm_suc;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "tx ftm success",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	val = vdev->tx_ftm_suc_retry;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "tx ftm success retry",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	val = vdev->tx_ftm_fail;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "tx ftm fail",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	val = vdev->rx_ftmr_cnt;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "rx ftm request count",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	val = vdev->rx_ftmr_dup_cnt;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "rx ftm request dup count",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	val = vdev->rx_iftmr_cnt;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "rx initial ftm req count",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	val = vdev->rx_iftmr_dup_cnt;
	if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
		len += FUNC1(buf + len, buf_len - len, "%30s %u\n",
				 "rx initial ftm req dup cnt",
				 FUNC0(val, WMI_VDEV_STATS_FTM_COUNT));
	len += FUNC1(buf + len, buf_len - len, "\n");

	*length = len;
}