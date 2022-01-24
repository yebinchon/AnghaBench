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
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dma_pending; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_done; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLASH_DMA_CTRL ; 
 int /*<<< orphan*/  FLASH_DMA_ERROR_STATUS ; 
 int /*<<< orphan*/  FLASH_DMA_FIRST_DESC ; 
 int /*<<< orphan*/  FLASH_DMA_FIRST_DESC_EXT ; 
 int /*<<< orphan*/  FLASH_DMA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmnand_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmnand_controller*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct brcmnand_host *host, dma_addr_t desc)
{
	struct brcmnand_controller *ctrl = host->ctrl;
	unsigned long timeo = FUNC5(100);

	FUNC2(ctrl, FLASH_DMA_FIRST_DESC, FUNC3(desc));
	(void)FUNC1(ctrl, FLASH_DMA_FIRST_DESC);
	FUNC2(ctrl, FLASH_DMA_FIRST_DESC_EXT, FUNC6(desc));
	(void)FUNC1(ctrl, FLASH_DMA_FIRST_DESC_EXT);

	/* Start FLASH_DMA engine */
	ctrl->dma_pending = true;
	FUNC4(); /* flush previous writes */
	FUNC2(ctrl, FLASH_DMA_CTRL, 0x03); /* wake | run */

	if (FUNC7(&ctrl->dma_done, timeo) <= 0) {
		FUNC0(ctrl->dev,
				"timeout waiting for DMA; status %#x, error status %#x\n",
				FUNC1(ctrl, FLASH_DMA_STATUS),
				FUNC1(ctrl, FLASH_DMA_ERROR_STATUS));
	}
	ctrl->dma_pending = false;
	FUNC2(ctrl, FLASH_DMA_CTRL, 0); /* force stop */
}