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
struct efx_link_state {int up; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; TYPE_1__* type; struct efx_link_state link_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* check_mac_fault ) (struct efx_nic*) ;int /*<<< orphan*/  (* monitor ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC5(struct efx_nic *efx)
{
	struct efx_link_state *link_state = &efx->link_state;
	int count, link_up_count = 0;
	bool link_up;

	for (count = 0; count < 40; count++) {
		FUNC2(HZ / 10);

		if (efx->type->monitor != NULL) {
			FUNC0(&efx->mac_lock);
			efx->type->monitor(efx);
			FUNC1(&efx->mac_lock);
		}

		FUNC0(&efx->mac_lock);
		link_up = link_state->up;
		if (link_up)
			link_up = !efx->type->check_mac_fault(efx);
		FUNC1(&efx->mac_lock);

		if (link_up) {
			if (++link_up_count == 2)
				return 0;
		} else {
			link_up_count = 0;
		}
	}

	return -ETIMEDOUT;
}