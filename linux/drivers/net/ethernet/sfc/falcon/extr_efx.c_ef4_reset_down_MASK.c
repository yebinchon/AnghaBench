#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ef4_nic {TYPE_2__* type; TYPE_1__* phy_op; scalar_t__ port_initialized; int /*<<< orphan*/  mac_lock; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int /*<<< orphan*/  (* fini ) (struct ef4_nic*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* fini ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int RESET_TYPE_DATAPATH ; 
 int RESET_TYPE_INVISIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 

void FUNC6(struct ef4_nic *efx, enum reset_type method)
{
	FUNC0(efx);

	FUNC2(efx);
	FUNC1(efx);

	FUNC3(&efx->mac_lock);
	if (efx->port_initialized && method != RESET_TYPE_INVISIBLE &&
	    method != RESET_TYPE_DATAPATH)
		efx->phy_op->fini(efx);
	efx->type->fini(efx);
}