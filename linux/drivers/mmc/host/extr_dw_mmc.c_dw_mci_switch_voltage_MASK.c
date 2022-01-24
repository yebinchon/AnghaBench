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
typedef  int u32 ;
struct mmc_ios {scalar_t__ signal_voltage; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {int /*<<< orphan*/  class_dev; TYPE_1__ supply; } ;
struct dw_mci_slot {int id; struct dw_mci* host; } ;
struct dw_mci_drv_data {int (* switch_voltage ) (struct mmc_host*,struct mmc_ios*) ;} ;
struct dw_mci {struct dw_mci_drv_data* drv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ; 
 int SDMMC_UHS_18V ; 
 int /*<<< orphan*/  UHS_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int FUNC2 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 struct dw_mci_slot* FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct mmc_host*,struct mmc_ios*) ; 
 int FUNC6 (struct mmc_host*,struct mmc_ios*) ; 

__attribute__((used)) static int FUNC7(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct dw_mci_slot *slot = FUNC4(mmc);
	struct dw_mci *host = slot->host;
	const struct dw_mci_drv_data *drv_data = host->drv_data;
	u32 uhs;
	u32 v18 = SDMMC_UHS_18V << slot->id;
	int ret;

	if (drv_data && drv_data->switch_voltage)
		return drv_data->switch_voltage(mmc, ios);

	/*
	 * Program the voltage.  Note that some instances of dw_mmc may use
	 * the UHS_REG for this.  For other instances (like exynos) the UHS_REG
	 * does no harm but you need to set the regulator directly.  Try both.
	 */
	uhs = FUNC2(host, UHS_REG);
	if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330)
		uhs &= ~v18;
	else
		uhs |= v18;

	if (!FUNC0(mmc->supply.vqmmc)) {
		ret = FUNC5(mmc, ios);

		if (ret) {
			FUNC1(&mmc->class_dev,
					 "Regulator set error %d - %s V\n",
					 ret, uhs & v18 ? "1.8" : "3.3");
			return ret;
		}
	}
	FUNC3(host, UHS_REG, uhs);

	return 0;
}