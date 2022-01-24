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
struct efx_nic {TYPE_2__* type; TYPE_1__* phy_op; scalar_t__ port_initialized; int /*<<< orphan*/  rss_lock; int /*<<< orphan*/  filter_sem; int /*<<< orphan*/  mac_lock; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;int /*<<< orphan*/  (* prepare_flr ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int RESET_TYPE_DATAPATH ; 
 int RESET_TYPE_INVISIBLE ; 
 int RESET_TYPE_MCDI_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 

void FUNC8(struct efx_nic *efx, enum reset_type method)
{
	FUNC0(efx);

	if (method == RESET_TYPE_MCDI_TIMEOUT)
		efx->type->prepare_flr(efx);

	FUNC3(efx);
	FUNC2(efx);

	FUNC4(&efx->mac_lock);
	FUNC1(&efx->filter_sem);
	FUNC4(&efx->rss_lock);
	if (efx->port_initialized && method != RESET_TYPE_INVISIBLE &&
	    method != RESET_TYPE_DATAPATH)
		efx->phy_op->fini(efx);
	efx->type->fini(efx);
}