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
struct ef4_nic {int dummy; } ;

/* Variables and functions */
 unsigned int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int FUNC1 (struct ef4_nic*) ; 
 int FUNC2 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC3(struct ef4_nic *efx, int *results, unsigned flags)
{
	int rc;

	if (!(flags & ETH_TEST_FL_OFFLINE))
		return 0;

	rc = FUNC2(efx);
	if (rc < 0)
		return rc;

	rc = FUNC1(efx);
	FUNC0(efx);
	results[0] = rc ? -1 : 1;
	return rc;
}