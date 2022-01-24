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
typedef  int u64 ;
typedef  int u32 ;
struct asic_fixed_properties {int sram_base_address; int sram_size; } ;
struct hl_device {int /*<<< orphan*/  dev; scalar_t__ pldm; struct asic_fixed_properties asic_prop; } ;

/* Variables and functions */
 int CFG_BASE ; 
 int NUMBER_OF_EXT_HW_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*) ; 
 int FUNC3 (struct hl_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*,int) ; 
 int FUNC5 (int) ; 
 int mmDMA_CH_0_WR_COMP_ADDR_LO ; 
 int mmDMA_CH_1_WR_COMP_ADDR_LO ; 
 int mmSYNC_MNGR_SOB_OBJ_1000 ; 
 int mmSYNC_MNGR_SOB_OBJ_1007 ; 
 int mmTPC_PLL_CLK_RLX_0 ; 

int FUNC6(struct hl_device *hdev, u32 asid)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u64 addr = prop->sram_base_address, sob_addr;
	u32 size = hdev->pldm ? 0x10000 : prop->sram_size;
	u64 val = 0x7777777777777777ull;
	int rc, dma_id;
	u32 channel_off = mmDMA_CH_1_WR_COMP_ADDR_LO -
					mmDMA_CH_0_WR_COMP_ADDR_LO;

	rc = FUNC3(hdev, addr, size, val, false);
	if (rc) {
		FUNC1(hdev->dev, "Failed to clear SRAM in context switch\n");
		return rc;
	}

	/* we need to reset registers that the user is allowed to change */
	sob_addr = CFG_BASE + mmSYNC_MNGR_SOB_OBJ_1007;
	FUNC0(mmDMA_CH_0_WR_COMP_ADDR_LO, FUNC5(sob_addr));

	for (dma_id = 1 ; dma_id < NUMBER_OF_EXT_HW_QUEUES ; dma_id++) {
		sob_addr = CFG_BASE + mmSYNC_MNGR_SOB_OBJ_1000 +
							(dma_id - 1) * 4;
		FUNC0(mmDMA_CH_0_WR_COMP_ADDR_LO + channel_off * dma_id,
						FUNC5(sob_addr));
	}

	FUNC0(mmTPC_PLL_CLK_RLX_0, 0x200020);

	FUNC4(hdev, asid);

	FUNC2(hdev);

	return 0;
}