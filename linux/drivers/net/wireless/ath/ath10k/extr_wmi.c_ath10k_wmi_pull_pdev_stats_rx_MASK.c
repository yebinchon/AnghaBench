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
struct wmi_pdev_stats_rx {int /*<<< orphan*/  mpdu_errs; int /*<<< orphan*/  phy_err_drop; int /*<<< orphan*/  phy_errs; int /*<<< orphan*/  oversize_amsdu; int /*<<< orphan*/  loc_mpdus; int /*<<< orphan*/  loc_msdus; int /*<<< orphan*/  htt_mpdus; int /*<<< orphan*/  htt_msdus; int /*<<< orphan*/  r3_frags; int /*<<< orphan*/  r2_frags; int /*<<< orphan*/  r1_frags; int /*<<< orphan*/  r0_frags; int /*<<< orphan*/  status_rcvd; int /*<<< orphan*/  mid_ppdu_route_change; } ;
struct ath10k_fw_stats_pdev {void* mpdu_errs; void* phy_err_drop; void* phy_errs; void* oversize_amsdu; void* loc_mpdus; void* loc_msdus; void* htt_mpdus; void* htt_msdus; void* r3_frags; void* r2_frags; void* r1_frags; void* r0_frags; void* status_rcvd; void* mid_ppdu_route_change; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(const struct wmi_pdev_stats_rx *src,
				   struct ath10k_fw_stats_pdev *dst)
{
	dst->mid_ppdu_route_change = FUNC0(src->mid_ppdu_route_change);
	dst->status_rcvd = FUNC0(src->status_rcvd);
	dst->r0_frags = FUNC0(src->r0_frags);
	dst->r1_frags = FUNC0(src->r1_frags);
	dst->r2_frags = FUNC0(src->r2_frags);
	dst->r3_frags = FUNC0(src->r3_frags);
	dst->htt_msdus = FUNC0(src->htt_msdus);
	dst->htt_mpdus = FUNC0(src->htt_mpdus);
	dst->loc_msdus = FUNC0(src->loc_msdus);
	dst->loc_mpdus = FUNC0(src->loc_mpdus);
	dst->oversize_amsdu = FUNC0(src->oversize_amsdu);
	dst->phy_errs = FUNC0(src->phy_errs);
	dst->phy_err_drop = FUNC0(src->phy_err_drop);
	dst->mpdu_errs = FUNC0(src->mpdu_errs);
}