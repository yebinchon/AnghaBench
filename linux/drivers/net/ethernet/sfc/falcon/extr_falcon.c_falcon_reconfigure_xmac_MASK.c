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
struct falcon_nic_data {int xmac_poll_required; } ;
struct ef4_nic {struct falcon_nic_data* nic_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int) ; 

__attribute__((used)) static int FUNC6(struct ef4_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;

	FUNC0(efx);

	FUNC3(efx);
	FUNC4(efx);

	FUNC2(efx);

	nic_data->xmac_poll_required = !FUNC5(efx, 5);
	FUNC1(efx);

	return 0;
}