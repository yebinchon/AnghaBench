#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {TYPE_1__* dma_desc; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_pa; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int status_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PAGE_READ ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int EBADMSG ; 
 int ENOMEM ; 
 int EUCLEAN ; 
 int FLASH_DMA_CORR_ERROR ; 
 int FLASH_DMA_ECC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct brcmnand_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmnand_host*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct brcmnand_host *host, u64 addr, u32 *buf,
			      u32 len, u8 dma_cmd)
{
	struct brcmnand_controller *ctrl = host->ctrl;
	dma_addr_t buf_pa;
	int dir = dma_cmd == CMD_PAGE_READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE;

	buf_pa = FUNC3(ctrl->dev, buf, len, dir);
	if (FUNC4(ctrl->dev, buf_pa)) {
		FUNC2(ctrl->dev, "unable to map buffer for DMA\n");
		return -ENOMEM;
	}

	FUNC1(host, ctrl->dma_desc, addr, buf_pa, len,
				   dma_cmd, true, true, 0);

	FUNC0(host, ctrl->dma_pa);

	FUNC5(ctrl->dev, buf_pa, len, dir);

	if (ctrl->dma_desc->status_valid & FLASH_DMA_ECC_ERROR)
		return -EBADMSG;
	else if (ctrl->dma_desc->status_valid & FLASH_DMA_CORR_ERROR)
		return -EUCLEAN;

	return 0;
}