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
struct wmi_pdev_stats_extra {int /*<<< orphan*/  mib_int_count; int /*<<< orphan*/  no_beacons; int /*<<< orphan*/  fcs_bad; int /*<<< orphan*/  rts_good; int /*<<< orphan*/  rts_bad; int /*<<< orphan*/  ack_rx_bad; } ;
struct ath10k_fw_stats_pdev {void* mib_int_count; void* no_beacons; void* fcs_bad; void* rts_good; void* rts_bad; void* ack_rx_bad; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(const struct wmi_pdev_stats_extra *src,
				      struct ath10k_fw_stats_pdev *dst)
{
	dst->ack_rx_bad = FUNC0(src->ack_rx_bad);
	dst->rts_bad = FUNC0(src->rts_bad);
	dst->rts_good = FUNC0(src->rts_good);
	dst->fcs_bad = FUNC0(src->fcs_bad);
	dst->no_beacons = FUNC0(src->no_beacons);
	dst->mib_int_count = FUNC0(src->mib_int_count);
}