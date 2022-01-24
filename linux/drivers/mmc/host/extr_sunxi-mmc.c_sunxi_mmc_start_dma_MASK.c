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
struct sunxi_mmc_host {int dummy; } ;
struct mmc_data {int flags; } ;

/* Variables and functions */
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  REG_DMAC ; 
 int /*<<< orphan*/  REG_GCTRL ; 
 int /*<<< orphan*/  REG_IDIE ; 
 int SDXC_DMA_ENABLE_BIT ; 
 int SDXC_DMA_RESET ; 
 int SDXC_IDMAC_FIX_BURST ; 
 int SDXC_IDMAC_IDMA_ON ; 
 int SDXC_IDMAC_RECEIVE_INTERRUPT ; 
 int SDXC_IDMAC_SOFT_RESET ; 
 int FUNC0 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sunxi_mmc_host*,struct mmc_data*) ; 

__attribute__((used)) static void FUNC3(struct sunxi_mmc_host *host,
				struct mmc_data *data)
{
	u32 rval;

	FUNC2(host, data);

	rval = FUNC0(host, REG_GCTRL);
	rval |= SDXC_DMA_ENABLE_BIT;
	FUNC1(host, REG_GCTRL, rval);
	rval |= SDXC_DMA_RESET;
	FUNC1(host, REG_GCTRL, rval);

	FUNC1(host, REG_DMAC, SDXC_IDMAC_SOFT_RESET);

	if (!(data->flags & MMC_DATA_WRITE))
		FUNC1(host, REG_IDIE, SDXC_IDMAC_RECEIVE_INTERRUPT);

	FUNC1(host, REG_DMAC,
		   SDXC_IDMAC_FIX_BURST | SDXC_IDMAC_IDMA_ON);
}