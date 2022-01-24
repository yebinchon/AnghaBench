#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nand_chip {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct mtd_info {TYPE_1__ dev; } ;
struct lpc32xx_nand_host {int /*<<< orphan*/  sgl; TYPE_3__* dma_chan; int /*<<< orphan*/  comp_dma; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_7__ {TYPE_2__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int DMA_CTRL_ACK ; 
 int DMA_PREP_INTERRUPT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpc32xx_dma_complete_func ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct nand_chip* FUNC8 (struct mtd_info*) ; 
 struct lpc32xx_nand_host* FUNC9 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mtd_info *mtd, void *mem, int len,
			    enum dma_transfer_direction dir)
{
	struct nand_chip *chip = FUNC8(mtd);
	struct lpc32xx_nand_host *host = FUNC9(chip);
	struct dma_async_tx_descriptor *desc;
	int flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
	int res;

	FUNC10(&host->sgl, mem, len);

	res = FUNC2(host->dma_chan->device->dev, &host->sgl, 1,
			 DMA_BIDIRECTIONAL);
	if (res != 1) {
		FUNC0(mtd->dev.parent, "Failed to map sg list\n");
		return -ENXIO;
	}
	desc = FUNC4(host->dma_chan, &host->sgl, 1, dir,
				       flags);
	if (!desc) {
		FUNC0(mtd->dev.parent, "Failed to prepare slave sg\n");
		goto out1;
	}

	FUNC6(&host->comp_dma);
	desc->callback = lpc32xx_dma_complete_func;
	desc->callback_param = &host->comp_dma;

	FUNC5(desc);
	FUNC1(host->dma_chan);

	FUNC11(&host->comp_dma, FUNC7(1000));

	FUNC3(host->dma_chan->device->dev, &host->sgl, 1,
		     DMA_BIDIRECTIONAL);
	return 0;
out1:
	FUNC3(host->dma_chan->device->dev, &host->sgl, 1,
		     DMA_BIDIRECTIONAL);
	return -ENXIO;
}