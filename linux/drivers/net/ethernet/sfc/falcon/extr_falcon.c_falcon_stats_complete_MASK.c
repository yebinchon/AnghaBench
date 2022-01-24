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
struct falcon_nic_data {int stats_pending; int /*<<< orphan*/  stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct ef4_nic {int /*<<< orphan*/  net_dev; TYPE_1__ stats_buffer; struct falcon_nic_data* nic_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALCON_STAT_COUNT ; 
 scalar_t__ FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  falcon_stat_desc ; 
 int /*<<< orphan*/  falcon_stat_mask ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;

	if (!nic_data->stats_pending)
		return;

	nic_data->stats_pending = false;
	if (FUNC0(efx)) {
		FUNC3(); /* read the done flag before the stats */
		FUNC1(falcon_stat_desc, FALCON_STAT_COUNT,
				     falcon_stat_mask, nic_data->stats,
				     efx->stats_buffer.addr, true);
	} else {
		FUNC2(efx, hw, efx->net_dev,
			  "timed out waiting for statistics\n");
	}
}