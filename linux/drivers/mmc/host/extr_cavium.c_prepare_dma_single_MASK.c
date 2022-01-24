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
struct mmc_data {int flags; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sg_len; } ;
struct cvm_mmc_host {scalar_t__ dma_base; scalar_t__ big_dma_addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 scalar_t__ FUNC2 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_DMA_CFG_ADR ; 
 int /*<<< orphan*/  MIO_EMM_DMA_CFG_EN ; 
 int /*<<< orphan*/  MIO_EMM_DMA_CFG_ENDIAN ; 
 int /*<<< orphan*/  MIO_EMM_DMA_CFG_RW ; 
 int /*<<< orphan*/  MIO_EMM_DMA_CFG_SIZE ; 
 int MMC_DATA_WRITE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static u64 FUNC9(struct cvm_mmc_host *host, struct mmc_data *data)
{
	u64 dma_cfg, addr;
	int count, rw;

	count = FUNC3(host->dev, data->sg, data->sg_len,
			   FUNC4(data));
	if (!count)
		return 0;

	rw = (data->flags & MMC_DATA_WRITE) ? 1 : 0;
	dma_cfg = FUNC0(MIO_EMM_DMA_CFG_EN, 1) |
		  FUNC0(MIO_EMM_DMA_CFG_RW, rw);
#ifdef __LITTLE_ENDIAN
	dma_cfg |= FIELD_PREP(MIO_EMM_DMA_CFG_ENDIAN, 1);
#endif
	dma_cfg |= FUNC0(MIO_EMM_DMA_CFG_SIZE,
			      (FUNC7(&data->sg[0]) / 8) - 1);

	addr = FUNC6(&data->sg[0]);
	if (!host->big_dma_addr)
		dma_cfg |= FUNC0(MIO_EMM_DMA_CFG_ADR, addr);
	FUNC8(dma_cfg, host->dma_base + FUNC2(host));

	FUNC5("[%s] sg_dma_len: %u  total sg_elem: %d\n",
		 (rw) ? "W" : "R", FUNC7(&data->sg[0]), count);

	if (host->big_dma_addr)
		FUNC8(addr, host->dma_base + FUNC1(host));
	return addr;
}