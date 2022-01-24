#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct mtd_info {TYPE_2__ dev; } ;
struct lpc32xx_nand_host {int /*<<< orphan*/  dma_chan; TYPE_1__* pdata; int /*<<< orphan*/  nand_chip; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_3__ {int /*<<< orphan*/  dma_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mtd_info* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct lpc32xx_nand_host *host)
{
	struct mtd_info *mtd = FUNC4(&host->nand_chip);
	dma_cap_mask_t mask;

	if (!host->pdata || !host->pdata->dma_filter) {
		FUNC0(mtd->dev.parent, "no DMA platform data\n");
		return -ENOENT;
	}

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);
	host->dma_chan = FUNC3(mask, host->pdata->dma_filter,
					     "nand-slc");
	if (!host->dma_chan) {
		FUNC0(mtd->dev.parent, "Failed to request DMA channel\n");
		return -EBUSY;
	}

	return 0;
}