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
struct wmi_pdev_stats_tx {int /*<<< orphan*/  txop_ovf; int /*<<< orphan*/  phy_underrun; int /*<<< orphan*/  pdev_resets; int /*<<< orphan*/  pdev_tx_timeout; int /*<<< orphan*/  pdev_cont_xretry; int /*<<< orphan*/  illgl_rate_phy_err; int /*<<< orphan*/  sw_retry_failure; int /*<<< orphan*/  self_triggers; int /*<<< orphan*/  data_rc; int /*<<< orphan*/  tx_ko; int /*<<< orphan*/  mpdus_requed; int /*<<< orphan*/  tx_abort; int /*<<< orphan*/  underrun; int /*<<< orphan*/  hw_reaped; int /*<<< orphan*/  hw_queued; int /*<<< orphan*/  local_freed; int /*<<< orphan*/  local_enqued; int /*<<< orphan*/  wmm_drop; int /*<<< orphan*/  mpdu_enqued; int /*<<< orphan*/  msdu_enqued; int /*<<< orphan*/  comp_delivered; int /*<<< orphan*/  comp_queued; } ;
struct ath10k_fw_stats_pdev {void* txop_ovf; void* phy_underrun; void* pdev_resets; void* pdev_tx_timeout; void* pdev_cont_xretry; void* illgl_rate_phy_err; void* sw_retry_failure; void* self_triggers; void* data_rc; void* tx_ko; void* mpdus_requed; void* tx_abort; void* underrun; void* hw_reaped; void* hw_queued; void* local_freed; void* local_enqued; void* wmm_drop; void* mpdu_enqued; void* msdu_enqued; void* comp_delivered; void* comp_queued; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(const struct wmi_pdev_stats_tx *src,
				   struct ath10k_fw_stats_pdev *dst)
{
	dst->comp_queued = FUNC0(src->comp_queued);
	dst->comp_delivered = FUNC0(src->comp_delivered);
	dst->msdu_enqued = FUNC0(src->msdu_enqued);
	dst->mpdu_enqued = FUNC0(src->mpdu_enqued);
	dst->wmm_drop = FUNC0(src->wmm_drop);
	dst->local_enqued = FUNC0(src->local_enqued);
	dst->local_freed = FUNC0(src->local_freed);
	dst->hw_queued = FUNC0(src->hw_queued);
	dst->hw_reaped = FUNC0(src->hw_reaped);
	dst->underrun = FUNC0(src->underrun);
	dst->tx_abort = FUNC0(src->tx_abort);
	dst->mpdus_requed = FUNC0(src->mpdus_requed);
	dst->tx_ko = FUNC0(src->tx_ko);
	dst->data_rc = FUNC0(src->data_rc);
	dst->self_triggers = FUNC0(src->self_triggers);
	dst->sw_retry_failure = FUNC0(src->sw_retry_failure);
	dst->illgl_rate_phy_err = FUNC0(src->illgl_rate_phy_err);
	dst->pdev_cont_xretry = FUNC0(src->pdev_cont_xretry);
	dst->pdev_tx_timeout = FUNC0(src->pdev_tx_timeout);
	dst->pdev_resets = FUNC0(src->pdev_resets);
	dst->phy_underrun = FUNC0(src->phy_underrun);
	dst->txop_ovf = FUNC0(src->txop_ovf);
}