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
typedef  int u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOTSUPP ; 
 scalar_t__ FORCE_FLASHLESS ; 
 int HW_ATL_GLB_SOFT_RES_ADR ; 
 int /*<<< orphan*/  HW_ATL_MAC_PHY_CONTROL ; 
 int /*<<< orphan*/  HW_ATL_MAC_PHY_MPI_RESET_BIT ; 
 int HW_ATL_MPI_FW_VERSION ; 
 int FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct aq_hw_s *self)
{
	u32 gsr, val, rbl_status;
	int k;

	FUNC3(self, 0x404, 0x40e1);
	FUNC3(self, 0x3a0, 0x1);
	FUNC3(self, 0x32a8, 0x0);

	/* Alter RBL status */
	FUNC3(self, 0x388, 0xDEAD);

	/* Cleanup SPI */
	val = FUNC2(self, 0x53C);
	FUNC3(self, 0x53C, val | 0x10);

	/* Global software reset*/
	FUNC6(self, 0U);
	FUNC7(self, 0U);
	FUNC4(self, HW_ATL_MAC_PHY_CONTROL,
			    FUNC1(HW_ATL_MAC_PHY_MPI_RESET_BIT),
			    HW_ATL_MAC_PHY_MPI_RESET_BIT, 0x0);
	gsr = FUNC2(self, HW_ATL_GLB_SOFT_RES_ADR);
	FUNC3(self, HW_ATL_GLB_SOFT_RES_ADR,
			(gsr & 0xFFFFBFFF) | 0x8000);

	if (FORCE_FLASHLESS)
		FUNC3(self, 0x534, 0x0);

	FUNC3(self, 0x404, 0x40e0);

	/* Wait for RBL boot */
	for (k = 0; k < 1000; k++) {
		rbl_status = FUNC2(self, 0x388) & 0xFFFF;
		if (rbl_status && rbl_status != 0xDEAD)
			break;
		FUNC0(10);
	}
	if (!rbl_status || rbl_status == 0xDEAD) {
		FUNC5("RBL Restart failed");
		return -EIO;
	}

	/* Restore NVR */
	if (FORCE_FLASHLESS)
		FUNC3(self, 0x534, 0xA0);

	if (rbl_status == 0xF1A7) {
		FUNC5("No FW detected. Dynamic FW load not implemented\n");
		return -ENOTSUPP;
	}

	for (k = 0; k < 1000; k++) {
		u32 fw_state = FUNC2(self, HW_ATL_MPI_FW_VERSION);

		if (fw_state)
			break;
		FUNC0(10);
	}
	if (k == 1000) {
		FUNC5("FW kickstart failed\n");
		return -EIO;
	}
	/* Old FW requires fixed delay after init */
	FUNC0(15);

	return 0;
}