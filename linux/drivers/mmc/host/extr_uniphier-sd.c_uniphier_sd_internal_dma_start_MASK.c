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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_sd_priv {int /*<<< orphan*/  dma_dir; } ;
struct tmio_mmc_host {int sg_len; int dma_on; scalar_t__ ctl; int /*<<< orphan*/  mmc; int /*<<< orphan*/  chan_rx; struct scatterlist* sg_ptr; } ;
struct scatterlist {int /*<<< orphan*/  offset; } ;
struct mmc_data {int flags; int /*<<< orphan*/  sg; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MMC_DATA_READ ; 
 scalar_t__ UNIPHIER_SD_DMA_ADDR_H ; 
 scalar_t__ UNIPHIER_SD_DMA_ADDR_L ; 
 scalar_t__ UNIPHIER_SD_DMA_MODE ; 
 int /*<<< orphan*/  UNIPHIER_SD_DMA_MODE_ADDR_INC ; 
 unsigned int UNIPHIER_SD_DMA_MODE_DIR_FROM_DEV ; 
 int /*<<< orphan*/  UNIPHIER_SD_DMA_MODE_DIR_MASK ; 
 unsigned int UNIPHIER_SD_DMA_MODE_DIR_TO_DEV ; 
 unsigned int UNIPHIER_SD_DMA_MODE_WIDTH_64 ; 
 int /*<<< orphan*/  UNIPHIER_SD_DMA_MODE_WIDTH_MASK ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 struct uniphier_sd_priv* FUNC8 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct tmio_mmc_host *host,
					   struct mmc_data *data)
{
	struct uniphier_sd_priv *priv = FUNC8(host);
	struct scatterlist *sg = host->sg_ptr;
	dma_addr_t dma_addr;
	unsigned int dma_mode_dir;
	u32 dma_mode;
	int sg_len;

	if ((data->flags & MMC_DATA_READ) && !host->chan_rx)
		goto force_pio;

	if (FUNC2(host->sg_len != 1))
		goto force_pio;

	if (!FUNC1(sg->offset, 8))
		goto force_pio;

	if (data->flags & MMC_DATA_READ) {
		priv->dma_dir = DMA_FROM_DEVICE;
		dma_mode_dir = UNIPHIER_SD_DMA_MODE_DIR_FROM_DEV;
	} else {
		priv->dma_dir = DMA_TO_DEVICE;
		dma_mode_dir = UNIPHIER_SD_DMA_MODE_DIR_TO_DEV;
	}

	sg_len = FUNC3(FUNC5(host->mmc), sg, 1, priv->dma_dir);
	if (sg_len == 0)
		goto force_pio;

	dma_mode = FUNC0(UNIPHIER_SD_DMA_MODE_DIR_MASK, dma_mode_dir);
	dma_mode |= FUNC0(UNIPHIER_SD_DMA_MODE_WIDTH_MASK,
			       UNIPHIER_SD_DMA_MODE_WIDTH_64);
	dma_mode |= UNIPHIER_SD_DMA_MODE_ADDR_INC;

	FUNC10(dma_mode, host->ctl + UNIPHIER_SD_DMA_MODE);

	dma_addr = FUNC6(data->sg);
	FUNC10(FUNC4(dma_addr), host->ctl + UNIPHIER_SD_DMA_ADDR_L);
	FUNC10(FUNC9(dma_addr), host->ctl + UNIPHIER_SD_DMA_ADDR_H);

	host->dma_on = true;

	return;
force_pio:
	FUNC7(host, 0);
}