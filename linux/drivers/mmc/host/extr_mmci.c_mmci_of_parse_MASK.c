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
struct mmci_host {int /*<<< orphan*/  clk_reg_add; int /*<<< orphan*/  pwr_reg_add; } ;
struct mmc_host {int /*<<< orphan*/  caps; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCI_STM32_CLK_NEGEDGE ; 
 int /*<<< orphan*/  MCI_STM32_CLK_SELCKIN ; 
 int /*<<< orphan*/  MCI_STM32_DIRPOL ; 
 int /*<<< orphan*/  MCI_ST_CMDDIREN ; 
 int /*<<< orphan*/  MCI_ST_DATA0DIREN ; 
 int /*<<< orphan*/  MCI_ST_DATA2DIREN ; 
 int /*<<< orphan*/  MCI_ST_DATA31DIREN ; 
 int /*<<< orphan*/  MCI_ST_DATA74DIREN ; 
 int /*<<< orphan*/  MCI_ST_FBCLKEN ; 
 int /*<<< orphan*/  MMC_CAP_MMC_HIGHSPEED ; 
 int /*<<< orphan*/  MMC_CAP_SD_HIGHSPEED ; 
 int FUNC0 (struct mmc_host*) ; 
 struct mmci_host* FUNC1 (struct mmc_host*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device_node *np, struct mmc_host *mmc)
{
	struct mmci_host *host = FUNC1(mmc);
	int ret = FUNC0(mmc);

	if (ret)
		return ret;

	if (FUNC2(np, "st,sig-dir-dat0", NULL))
		host->pwr_reg_add |= MCI_ST_DATA0DIREN;
	if (FUNC2(np, "st,sig-dir-dat2", NULL))
		host->pwr_reg_add |= MCI_ST_DATA2DIREN;
	if (FUNC2(np, "st,sig-dir-dat31", NULL))
		host->pwr_reg_add |= MCI_ST_DATA31DIREN;
	if (FUNC2(np, "st,sig-dir-dat74", NULL))
		host->pwr_reg_add |= MCI_ST_DATA74DIREN;
	if (FUNC2(np, "st,sig-dir-cmd", NULL))
		host->pwr_reg_add |= MCI_ST_CMDDIREN;
	if (FUNC2(np, "st,sig-pin-fbclk", NULL))
		host->pwr_reg_add |= MCI_ST_FBCLKEN;
	if (FUNC2(np, "st,sig-dir", NULL))
		host->pwr_reg_add |= MCI_STM32_DIRPOL;
	if (FUNC2(np, "st,neg-edge", NULL))
		host->clk_reg_add |= MCI_STM32_CLK_NEGEDGE;
	if (FUNC2(np, "st,use-ckin", NULL))
		host->clk_reg_add |= MCI_STM32_CLK_SELCKIN;

	if (FUNC2(np, "mmc-cap-mmc-highspeed", NULL))
		mmc->caps |= MMC_CAP_MMC_HIGHSPEED;
	if (FUNC2(np, "mmc-cap-sd-highspeed", NULL))
		mmc->caps |= MMC_CAP_SD_HIGHSPEED;

	return 0;
}