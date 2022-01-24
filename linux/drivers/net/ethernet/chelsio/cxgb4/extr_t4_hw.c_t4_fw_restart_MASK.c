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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_BOOT_CFG_A ; 
 int ETIMEDOUT ; 
 int FW_CMD_MAX_TIMEOUT ; 
 int /*<<< orphan*/  PCIE_FW_A ; 
 int PCIE_FW_HALT_F ; 
 unsigned int PCIE_FW_MASTER_M ; 
 int PIORSTMODE_F ; 
 int PIORST_F ; 
 int /*<<< orphan*/  PL_RST_A ; 
 int UPCRST_F ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct adapter*,unsigned int,int) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct adapter *adap, unsigned int mbox, int reset)
{
	if (reset) {
		/*
		 * Since we're directing the RESET instead of the firmware
		 * doing it automatically, we need to clear the PCIE_FW.HALT
		 * bit.
		 */
		FUNC3(adap, PCIE_FW_A, PCIE_FW_HALT_F, 0);

		/*
		 * If we've been given a valid mailbox, first try to get the
		 * firmware to do the RESET.  If that works, great and we can
		 * return success.  Otherwise, if we haven't been given a
		 * valid mailbox or the RESET command failed, fall back to
		 * hitting the chip with a hammer.
		 */
		if (mbox <= PCIE_FW_MASTER_M) {
			FUNC3(adap, CIM_BOOT_CFG_A, UPCRST_F, 0);
			FUNC0(100);
			if (FUNC1(adap, mbox,
					PIORST_F | PIORSTMODE_F) == 0)
				return 0;
		}

		FUNC4(adap, PL_RST_A, PIORST_F | PIORSTMODE_F);
		FUNC0(2000);
	} else {
		int ms;

		FUNC3(adap, CIM_BOOT_CFG_A, UPCRST_F, 0);
		for (ms = 0; ms < FW_CMD_MAX_TIMEOUT; ) {
			if (!(FUNC2(adap, PCIE_FW_A) & PCIE_FW_HALT_F))
				return 0;
			FUNC0(100);
			ms += 100;
		}
		return -ETIMEDOUT;
	}
	return 0;
}