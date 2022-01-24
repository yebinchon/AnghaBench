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
struct bnx2x {scalar_t__ fw_stats_req_sz; scalar_t__ fw_stats_data_sz; int /*<<< orphan*/  fw_stats_mapping; int /*<<< orphan*/  fw_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct bnx2x *bp)
{
	FUNC0(bp->fw_stats, bp->fw_stats_mapping,
		       bp->fw_stats_data_sz + bp->fw_stats_req_sz);
	return;
}