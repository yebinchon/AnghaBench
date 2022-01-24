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
struct efx_nic {TYPE_1__* type; } ;
struct efx_mcdi_iface {int /*<<< orphan*/  iface_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* mcdi_poll_response ) (struct efx_nic*) ;} ;

/* Variables and functions */
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 

__attribute__((used)) static bool FUNC6(struct efx_nic *efx)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);

	FUNC2();
	if (!efx->type->mcdi_poll_response(efx))
		return false;

	FUNC3(&mcdi->iface_lock);
	FUNC1(efx);
	FUNC4(&mcdi->iface_lock);

	return true;
}