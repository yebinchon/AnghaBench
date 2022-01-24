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
struct i40e_pf {int flags; int num_alloc_vsi; scalar_t__* veb; TYPE_1__** vsi; int /*<<< orphan*/  state; scalar_t__ service_timer_previous; scalar_t__ service_timer_period; } ;
struct TYPE_2__ {scalar_t__ netdev; } ;

/* Variables and functions */
 int I40E_FLAG_LINK_POLLING_ENABLED ; 
 int I40E_FLAG_VEB_STATS_ENABLED ; 
 int I40E_MAX_VEB ; 
 int /*<<< orphan*/  __I40E_CONFIG_BUSY ; 
 int /*<<< orphan*/  __I40E_DOWN ; 
 int /*<<< orphan*/  __I40E_TEMP_LINK_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct i40e_pf *pf)
{
	int i;

	/* if interface is down do nothing */
	if (FUNC5(__I40E_DOWN, pf->state) ||
	    FUNC5(__I40E_CONFIG_BUSY, pf->state))
		return;

	/* make sure we don't do these things too often */
	if (FUNC6(jiffies, (pf->service_timer_previous +
				  pf->service_timer_period)))
		return;
	pf->service_timer_previous = jiffies;

	if ((pf->flags & I40E_FLAG_LINK_POLLING_ENABLED) ||
	    FUNC5(__I40E_TEMP_LINK_POLLING, pf->state))
		FUNC0(pf);

	/* Update the stats for active netdevs so the network stack
	 * can look at updated numbers whenever it cares to
	 */
	for (i = 0; i < pf->num_alloc_vsi; i++)
		if (pf->vsi[i] && pf->vsi[i]->netdev)
			FUNC3(pf->vsi[i]);

	if (pf->flags & I40E_FLAG_VEB_STATS_ENABLED) {
		/* Update the stats for the active switching components */
		for (i = 0; i < I40E_MAX_VEB; i++)
			if (pf->veb[i])
				FUNC4(pf->veb[i]);
	}

	FUNC1(pf);
	FUNC2(pf);
}