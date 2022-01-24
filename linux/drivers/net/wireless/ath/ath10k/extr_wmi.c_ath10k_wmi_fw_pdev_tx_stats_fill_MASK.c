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
struct ath10k_fw_stats_pdev {int /*<<< orphan*/  txop_ovf; int /*<<< orphan*/  phy_underrun; int /*<<< orphan*/  pdev_resets; int /*<<< orphan*/  pdev_tx_timeout; int /*<<< orphan*/  pdev_cont_xretry; int /*<<< orphan*/  illgl_rate_phy_err; int /*<<< orphan*/  sw_retry_failure; int /*<<< orphan*/  self_triggers; int /*<<< orphan*/  data_rc; int /*<<< orphan*/  tx_ko; int /*<<< orphan*/  mpdus_requed; int /*<<< orphan*/  tx_abort; int /*<<< orphan*/  underrun; int /*<<< orphan*/  hw_reaped; int /*<<< orphan*/  hw_queued; int /*<<< orphan*/  local_freed; int /*<<< orphan*/  local_enqued; int /*<<< orphan*/  wmm_drop; int /*<<< orphan*/  mpdu_enqued; int /*<<< orphan*/  msdu_enqued; int /*<<< orphan*/  comp_delivered; int /*<<< orphan*/  comp_queued; } ;

/* Variables and functions */
 int ATH10K_FW_STATS_BUF_SIZE ; 
 int FUNC0 (char*,int,char*,char*,...) ; 

__attribute__((used)) static void
FUNC1(const struct ath10k_fw_stats_pdev *pdev,
				 char *buf, u32 *length)
{
	u32 len = *length;
	u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;

	len += FUNC0(buf + len, buf_len - len, "\n%30s\n",
			 "ath10k PDEV TX stats");
	len += FUNC0(buf + len, buf_len - len, "%30s\n\n",
				 "=================");

	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "HTT cookies queued", pdev->comp_queued);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "HTT cookies disp.", pdev->comp_delivered);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "MSDU queued", pdev->msdu_enqued);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "MPDU queued", pdev->mpdu_enqued);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "MSDUs dropped", pdev->wmm_drop);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Local enqued", pdev->local_enqued);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Local freed", pdev->local_freed);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "HW queued", pdev->hw_queued);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "PPDUs reaped", pdev->hw_reaped);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Num underruns", pdev->underrun);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "PPDUs cleaned", pdev->tx_abort);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "MPDUs requed", pdev->mpdus_requed);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Excessive retries", pdev->tx_ko);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "HW rate", pdev->data_rc);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Sched self triggers", pdev->self_triggers);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Dropped due to SW retries",
			 pdev->sw_retry_failure);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Illegal rate phy errors",
			 pdev->illgl_rate_phy_err);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "Pdev continuous xretry", pdev->pdev_cont_xretry);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "TX timeout", pdev->pdev_tx_timeout);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "PDEV resets", pdev->pdev_resets);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "PHY underrun", pdev->phy_underrun);
	len += FUNC0(buf + len, buf_len - len, "%30s %10d\n",
			 "MPDU is more than txop limit", pdev->txop_ovf);
	*length = len;
}