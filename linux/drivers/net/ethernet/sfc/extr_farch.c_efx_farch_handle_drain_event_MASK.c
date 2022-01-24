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
struct efx_nic {int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  active_queues; } ;
struct efx_channel {struct efx_nic* efx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct efx_channel *channel)
{
	struct efx_nic *efx = channel->efx;

	FUNC0(FUNC2(&efx->active_queues) == 0);
	FUNC1(&efx->active_queues);
	if (FUNC3(efx))
		FUNC4(&efx->flush_wq);
}