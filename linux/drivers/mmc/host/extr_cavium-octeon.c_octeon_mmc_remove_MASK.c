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
typedef  int /*<<< orphan*/  u64 ;
struct platform_device {int dummy; } ;
struct cvm_mmc_host {scalar_t__ dma_base; scalar_t__* slot; } ;

/* Variables and functions */
 int CAVIUM_MAX_MMC ; 
 scalar_t__ FUNC0 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_DMA_CFG_EN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cvm_mmc_host*,int /*<<< orphan*/ ) ; 
 struct cvm_mmc_host* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct cvm_mmc_host *host = FUNC3(pdev);
	u64 dma_cfg;
	int i;

	for (i = 0; i < CAVIUM_MAX_MMC; i++)
		if (host->slot[i])
			FUNC1(host->slot[i]);

	dma_cfg = FUNC4(host->dma_base + FUNC0(host));
	dma_cfg &= ~MIO_EMM_DMA_CFG_EN;
	FUNC5(dma_cfg, host->dma_base + FUNC0(host));

	FUNC2(host, 0);
	return 0;
}