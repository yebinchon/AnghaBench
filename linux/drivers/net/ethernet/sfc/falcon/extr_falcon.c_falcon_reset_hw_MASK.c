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
struct falcon_nic_data {int /*<<< orphan*/  spi_lock; } ;
struct ef4_nic {struct falcon_nic_data* nic_data; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;

/* Variables and functions */
 int FUNC0 (struct ef4_nic*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ef4_nic *efx, enum reset_type method)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	int rc;

	FUNC1(&nic_data->spi_lock);
	rc = FUNC0(efx, method);
	FUNC2(&nic_data->spi_lock);

	return rc;
}