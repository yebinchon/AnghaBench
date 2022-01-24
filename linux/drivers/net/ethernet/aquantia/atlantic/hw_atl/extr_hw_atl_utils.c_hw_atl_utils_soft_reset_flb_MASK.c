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
 int HW_ATL_GLB_SOFT_RES_ADR ; 
 int /*<<< orphan*/  HW_ATL_MAC_PHY_CONTROL ; 
 int /*<<< orphan*/  HW_ATL_MAC_PHY_MPI_RESET_BIT ; 
 int HW_ATL_MPI_DAISY_CHAIN_STATUS ; 
 int HW_ATL_MPI_FW_VERSION ; 
 int FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct aq_hw_s *self)
{
	u32 gsr, val;
	int k = 0;

	FUNC3(self, 0x404, 0x40e1);
	FUNC0(50);

	/* Cleanup SPI */
	val = FUNC2(self, 0x53C);
	FUNC3(self, 0x53C, val | 0x10);

	gsr = FUNC2(self, HW_ATL_GLB_SOFT_RES_ADR);
	FUNC3(self, HW_ATL_GLB_SOFT_RES_ADR, (gsr & 0xBFFF) | 0x8000);

	/* Kickstart MAC */
	FUNC3(self, 0x404, 0x80e0);
	FUNC3(self, 0x32a8, 0x0);
	FUNC3(self, 0x520, 0x1);

	/* Reset SPI again because of possible interrupted SPI burst */
	val = FUNC2(self, 0x53C);
	FUNC3(self, 0x53C, val | 0x10);
	FUNC0(10);
	/* Clear SPI reset state */
	FUNC3(self, 0x53C, val & ~0x10);

	FUNC3(self, 0x404, 0x180e0);

	for (k = 0; k < 1000; k++) {
		u32 flb_status = FUNC2(self,
						HW_ATL_MPI_DAISY_CHAIN_STATUS);

		flb_status = flb_status & 0x10;
		if (flb_status)
			break;
		FUNC0(10);
	}
	if (k == 1000) {
		FUNC5("MAC kickstart failed\n");
		return -EIO;
	}

	/* FW reset */
	FUNC3(self, 0x404, 0x80e0);
	FUNC0(50);
	FUNC3(self, 0x3a0, 0x1);

	/* Kickstart PHY - skipped */

	/* Global software reset*/
	FUNC6(self, 0U);
	FUNC7(self, 0U);
	FUNC4(self, HW_ATL_MAC_PHY_CONTROL,
			    FUNC1(HW_ATL_MAC_PHY_MPI_RESET_BIT),
			    HW_ATL_MAC_PHY_MPI_RESET_BIT, 0x0);
	gsr = FUNC2(self, HW_ATL_GLB_SOFT_RES_ADR);
	FUNC3(self, HW_ATL_GLB_SOFT_RES_ADR, (gsr & 0xBFFF) | 0x8000);

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