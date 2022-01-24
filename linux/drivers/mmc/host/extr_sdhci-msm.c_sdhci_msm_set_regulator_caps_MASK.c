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
struct sdhci_msm_offset {scalar_t__ core_vendor_spec; } ;
struct sdhci_msm_host {int curr_io_level; int caps_0; struct sdhci_msm_offset* offset; struct mmc_host* mmc; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct regulator {int dummy; } ;
struct TYPE_2__ {struct regulator* vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int CORE_1_8V_SUPPORT ; 
 int CORE_3_0V_SUPPORT ; 
 int CORE_IO_PAD_PWR_SWITCH ; 
 int CORE_IO_PAD_PWR_SWITCH_EN ; 
 int /*<<< orphan*/  FUNC0 (struct regulator*) ; 
 int REQ_IO_HIGH ; 
 int REQ_IO_LOW ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct regulator*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct sdhci_msm_host *msm_host)
{
	struct mmc_host *mmc = msm_host->mmc;
	struct regulator *supply = mmc->supply.vqmmc;
	u32 caps = 0, config;
	struct sdhci_host *host = FUNC2(mmc);
	const struct sdhci_msm_offset *msm_offset = msm_host->offset;

	if (!FUNC0(mmc->supply.vqmmc)) {
		if (FUNC6(supply, 1700000, 1950000))
			caps |= CORE_1_8V_SUPPORT;
		if (FUNC6(supply, 2700000, 3600000))
			caps |= CORE_3_0V_SUPPORT;

		if (!caps)
			FUNC4("%s: 1.8/3V not supported for vqmmc\n",
					FUNC1(mmc));
	}

	if (caps) {
		/*
		 * Set the PAD_PWR_SWITCH_EN bit so that the PAD_PWR_SWITCH
		 * bit can be used as required later on.
		 */
		u32 io_level = msm_host->curr_io_level;

		config = FUNC5(host->ioaddr +
				msm_offset->core_vendor_spec);
		config |= CORE_IO_PAD_PWR_SWITCH_EN;

		if ((io_level & REQ_IO_HIGH) && (caps &	CORE_3_0V_SUPPORT))
			config &= ~CORE_IO_PAD_PWR_SWITCH;
		else if ((io_level & REQ_IO_LOW) || (caps & CORE_1_8V_SUPPORT))
			config |= CORE_IO_PAD_PWR_SWITCH;

		FUNC7(config,
				host->ioaddr + msm_offset->core_vendor_spec);
	}
	msm_host->caps_0 |= caps;
	FUNC3("%s: supported caps: 0x%08x\n", FUNC1(mmc), caps);
}