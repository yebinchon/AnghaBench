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
struct dw_mci {int dma_64bit_address; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMOD ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  PLDMND ; 
 int /*<<< orphan*/  SDMMC_CTRL_DMA_RESET ; 
 int SDMMC_CTRL_USE_IDMAC ; 
 int SDMMC_IDMAC_ENABLE ; 
 int SDMMC_IDMAC_FB ; 
 int /*<<< orphan*/  FUNC0 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*) ; 
 int FUNC2 (struct dw_mci*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct dw_mci*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct dw_mci *host, unsigned int sg_len)
{
	u32 temp;
	int ret;

	if (host->dma_64bit_address == 1)
		ret = FUNC3(host, host->data, sg_len);
	else
		ret = FUNC2(host, host->data, sg_len);

	if (ret)
		goto out;

	/* drain writebuffer */
	FUNC6();

	/* Make sure to reset DMA in case we did PIO before this */
	FUNC0(host, SDMMC_CTRL_DMA_RESET);
	FUNC1(host);

	/* Select IDMAC interface */
	temp = FUNC4(host, CTRL);
	temp |= SDMMC_CTRL_USE_IDMAC;
	FUNC5(host, CTRL, temp);

	/* drain writebuffer */
	FUNC6();

	/* Enable the IDMAC */
	temp = FUNC4(host, BMOD);
	temp |= SDMMC_IDMAC_ENABLE | SDMMC_IDMAC_FB;
	FUNC5(host, BMOD, temp);

	/* Start it running */
	FUNC5(host, PLDMND, 1);

out:
	return ret;
}