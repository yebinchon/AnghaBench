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
struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int /*<<< orphan*/ * vf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;

	FUNC0(efx);
	FUNC1(nic_data->vf);
	nic_data->vf = NULL;
}