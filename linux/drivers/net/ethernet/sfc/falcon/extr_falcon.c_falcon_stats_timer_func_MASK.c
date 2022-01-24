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
struct timer_list {int dummy; } ;
struct falcon_nic_data {scalar_t__ stats_disable_count; struct ef4_nic* efx; } ;
struct ef4_nic {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 struct falcon_nic_data* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct falcon_nic_data* nic_data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct falcon_nic_data *nic_data = FUNC2(nic_data, t,
						      stats_timer);
	struct ef4_nic *efx = nic_data->efx;

	FUNC3(&efx->stats_lock);

	FUNC0(efx);
	if (nic_data->stats_disable_count == 0)
		FUNC1(efx);

	FUNC4(&efx->stats_lock);
}