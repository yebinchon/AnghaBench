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
struct efx_ef10_nic_data {int warm_boot_count; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC2(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	int rc;

	rc = FUNC0(efx);
	if (rc < 0) {
		/* The firmware is presumably in the process of
		 * rebooting.  However, we are supposed to report each
		 * reboot just once, so we must only do that once we
		 * can read and store the updated warm boot count.
		 */
		return 0;
	}

	if (rc == nic_data->warm_boot_count)
		return 0;

	nic_data->warm_boot_count = rc;
	FUNC1(efx);

	return -EIO;
}