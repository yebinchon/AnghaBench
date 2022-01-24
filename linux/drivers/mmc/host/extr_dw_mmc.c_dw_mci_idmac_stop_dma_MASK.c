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
struct dw_mci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMOD ; 
 int /*<<< orphan*/  CTRL ; 
 int SDMMC_CTRL_DMA_RESET ; 
 int SDMMC_CTRL_USE_IDMAC ; 
 int SDMMC_IDMAC_ENABLE ; 
 int SDMMC_IDMAC_FB ; 
 int SDMMC_IDMAC_SWRESET ; 
 int FUNC0 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct dw_mci *host)
{
	u32 temp;

	/* Disable and reset the IDMAC interface */
	temp = FUNC0(host, CTRL);
	temp &= ~SDMMC_CTRL_USE_IDMAC;
	temp |= SDMMC_CTRL_DMA_RESET;
	FUNC1(host, CTRL, temp);

	/* Stop the IDMAC running */
	temp = FUNC0(host, BMOD);
	temp &= ~(SDMMC_IDMAC_ENABLE | SDMMC_IDMAC_FB);
	temp |= SDMMC_IDMAC_SWRESET;
	FUNC1(host, BMOD, temp);
}