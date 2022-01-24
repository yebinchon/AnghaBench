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
struct efx_nic {int mc_bist_for_other_fn; } ;
struct efx_mcdi_iface {scalar_t__ mode; int new_epoch; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  credits; scalar_t__ resp_data_len; scalar_t__ resp_hdr_len; int /*<<< orphan*/  resprc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ MCDI_MODE_EVENTS ; 
 int /*<<< orphan*/  RESET_TYPE_MC_BIST ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 scalar_t__ FUNC1 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct efx_nic *efx)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);

	FUNC4(&mcdi->iface_lock);
	efx->mc_bist_for_other_fn = true;
	FUNC2(mcdi);

	if (FUNC1(mcdi)) {
		if (mcdi->mode == MCDI_MODE_EVENTS) {
			mcdi->resprc = -EIO;
			mcdi->resp_hdr_len = 0;
			mcdi->resp_data_len = 0;
			++mcdi->credits;
		}
	}
	mcdi->new_epoch = true;
	FUNC3(efx, RESET_TYPE_MC_BIST);
	FUNC5(&mcdi->iface_lock);
}