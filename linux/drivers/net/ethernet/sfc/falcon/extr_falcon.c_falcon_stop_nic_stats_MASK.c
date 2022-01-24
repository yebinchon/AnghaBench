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
struct falcon_nic_data {scalar_t__ stats_pending; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  stats_disable_count; } ;
struct ef4_nic {int /*<<< orphan*/  stats_lock; struct falcon_nic_data* nic_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	int i;

	FUNC3();

	FUNC5(&efx->stats_lock);
	++nic_data->stats_disable_count;
	FUNC6(&efx->stats_lock);

	FUNC1(&nic_data->stats_timer);

	/* Wait enough time for the most recent transfer to
	 * complete. */
	for (i = 0; i < 4 && nic_data->stats_pending; i++) {
		if (FUNC0(efx))
			break;
		FUNC4(1);
	}

	FUNC5(&efx->stats_lock);
	FUNC2(efx);
	FUNC6(&efx->stats_lock);
}