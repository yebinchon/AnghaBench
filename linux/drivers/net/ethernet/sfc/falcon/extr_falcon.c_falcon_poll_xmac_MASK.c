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
struct falcon_nic_data {int xmac_poll_required; } ;
struct TYPE_2__ {int /*<<< orphan*/  up; } ;
struct ef4_nic {TYPE_1__ link_state; struct falcon_nic_data* nic_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int) ; 

__attribute__((used)) static void FUNC2(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;

	/* We expect xgmii faults if the wireside link is down */
	if (!efx->link_state.up || !nic_data->xmac_poll_required)
		return;

	nic_data->xmac_poll_required = !FUNC1(efx, 1);
	FUNC0(efx);
}