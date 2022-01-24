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
typedef  size_t u32 ;
struct efx_nic {int /*<<< orphan*/  link_state; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MCDI_EVENT_LINKCHANGE_FCNTL ; 
 int /*<<< orphan*/  MCDI_EVENT_LINKCHANGE_LINK_FLAGS ; 
 int /*<<< orphan*/  MCDI_EVENT_LINKCHANGE_LP_CAP ; 
 int /*<<< orphan*/  MCDI_EVENT_LINKCHANGE_SPEED ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 size_t* efx_mcdi_event_link_speed ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ *,size_t,size_t,size_t) ; 

void FUNC6(struct efx_nic *efx, efx_qword_t *ev)
{
	u32 flags, fcntl, speed, lpa;

	speed = FUNC1(*ev, MCDI_EVENT_LINKCHANGE_SPEED);
	FUNC2(speed >= FUNC0(efx_mcdi_event_link_speed));
	speed = efx_mcdi_event_link_speed[speed];

	flags = FUNC1(*ev, MCDI_EVENT_LINKCHANGE_LINK_FLAGS);
	fcntl = FUNC1(*ev, MCDI_EVENT_LINKCHANGE_FCNTL);
	lpa = FUNC1(*ev, MCDI_EVENT_LINKCHANGE_LP_CAP);

	/* efx->link_state is only modified by efx_mcdi_phy_get_link(),
	 * which is only run after flushing the event queues. Therefore, it
	 * is safe to modify the link state outside of the mac_lock here.
	 */
	FUNC5(efx, &efx->link_state, speed, flags, fcntl);

	FUNC4(efx, lpa);

	FUNC3(efx);
}