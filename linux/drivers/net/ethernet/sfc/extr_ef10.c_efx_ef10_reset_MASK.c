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
struct efx_nic {int dummy; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;

/* Variables and functions */
 int EPERM ; 
 int RESET_TYPE_ALL ; 
 int RESET_TYPE_MCDI_TIMEOUT ; 
 int RESET_TYPE_WORLD ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*,int) ; 

__attribute__((used)) static int FUNC2(struct efx_nic *efx, enum reset_type reset_type)
{
	int rc = FUNC1(efx, reset_type);

	/* Unprivileged functions return -EPERM, but need to return success
	 * here so that the datapath is brought back up.
	 */
	if (reset_type == RESET_TYPE_WORLD && rc == -EPERM)
		rc = 0;

	/* If it was a port reset, trigger reallocation of MC resources.
	 * Note that on an MC reset nothing needs to be done now because we'll
	 * detect the MC reset later and handle it then.
	 * For an FLR, we never get an MC reset event, but the MC has reset all
	 * resources assigned to us, so we have to trigger reallocation now.
	 */
	if ((reset_type == RESET_TYPE_ALL ||
	     reset_type == RESET_TYPE_MCDI_TIMEOUT) && !rc)
		FUNC0(efx);
	return rc;
}