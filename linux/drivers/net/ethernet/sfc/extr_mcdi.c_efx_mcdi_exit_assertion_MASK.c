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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_CMD_REBOOT ; 
 int /*<<< orphan*/  MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION ; 
 int /*<<< orphan*/  MC_CMD_REBOOT_IN_LEN ; 
 scalar_t__ MC_CMD_REBOOT_OUT_LEN ; 
 int /*<<< orphan*/  REBOOT_IN_FLAGS ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inbuf ; 

__attribute__((used)) static int FUNC5(struct efx_nic *efx)
{
	FUNC1(inbuf, MC_CMD_REBOOT_IN_LEN);
	int rc;

	/* If the MC is running debug firmware, it might now be
	 * waiting for a debugger to attach, but we just want it to
	 * reboot.  We set a flag that makes the command a no-op if it
	 * has already done so.
	 * The MCDI will thus return either 0 or -EIO.
	 */
	FUNC0(MC_CMD_REBOOT_OUT_LEN != 0);
	FUNC2(inbuf, REBOOT_IN_FLAGS,
		       MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION);
	rc = FUNC4(efx, MC_CMD_REBOOT, inbuf, MC_CMD_REBOOT_IN_LEN,
				NULL, 0, NULL);
	if (rc == -EIO)
		rc = 0;
	if (rc)
		FUNC3(efx, MC_CMD_REBOOT, MC_CMD_REBOOT_IN_LEN,
				       NULL, 0, rc);
	return rc;
}