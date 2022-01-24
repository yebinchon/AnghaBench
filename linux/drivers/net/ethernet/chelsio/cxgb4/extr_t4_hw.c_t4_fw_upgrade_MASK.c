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
typedef  int /*<<< orphan*/  u8 ;
struct fw_hdr {int /*<<< orphan*/  flags; } ;
struct adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_FW_OK ; 
 int EINVAL ; 
 int FW_HDR_FLAGS_RESET_HALT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct fw_hdr const*) ; 
 int FUNC3 (struct adapter*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC7(struct adapter *adap, unsigned int mbox,
		  const u8 *fw_data, unsigned int size, int force)
{
	const struct fw_hdr *fw_hdr = (const struct fw_hdr *)fw_data;
	int reset, ret;

	if (!FUNC2(adap, fw_hdr))
		return -EINVAL;

	/* Disable CXGB4_FW_OK flag so that mbox commands with CXGB4_FW_OK flag
	 * set wont be sent when we are flashing FW.
	 */
	adap->flags &= ~CXGB4_FW_OK;

	ret = FUNC1(adap, mbox, force);
	if (ret < 0 && !force)
		goto out;

	ret = FUNC6(adap, fw_data, size);
	if (ret < 0)
		goto out;

	/*
	 * If there was a Firmware Configuration File stored in FLASH,
	 * there's a good chance that it won't be compatible with the new
	 * Firmware.  In order to prevent difficult to diagnose adapter
	 * initialization issues, we clear out the Firmware Configuration File
	 * portion of the FLASH .  The user will need to re-FLASH a new
	 * Firmware Configuration File which is compatible with the new
	 * Firmware if that's desired.
	 */
	(void)FUNC5(adap, NULL, 0);

	/*
	 * Older versions of the firmware don't understand the new
	 * PCIE_FW.HALT flag and so won't know to perform a RESET when they
	 * restart.  So for newly loaded older firmware we'll have to do the
	 * RESET for it so it starts up on a clean slate.  We can tell if
	 * the newly loaded firmware will handle this right by checking
	 * its header flags to see if it advertises the capability.
	 */
	reset = ((FUNC0(fw_hdr->flags) & FW_HDR_FLAGS_RESET_HALT) == 0);
	ret = FUNC3(adap, mbox, reset);

	/* Grab potentially new Firmware Device Log parameters so we can see
	 * how healthy the new Firmware is.  It's okay to contact the new
	 * Firmware for these parameters even though, as far as it's
	 * concerned, we've never said "HELLO" to it ...
	 */
	(void)FUNC4(adap);
out:
	adap->flags |= CXGB4_FW_OK;
	return ret;
}