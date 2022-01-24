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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_offset {scalar_t__ core_dll_status; scalar_t__ core_dll_config; scalar_t__ core_dll_config_2; scalar_t__ core_vendor_spec; } ;
struct sdhci_msm_host {scalar_t__ use_14lpp_dll_reset; int /*<<< orphan*/  xo_clk; struct sdhci_msm_offset* offset; } ;
struct sdhci_host {int clock; int /*<<< orphan*/  lock; scalar_t__ ioaddr; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int CORE_CK_OUT_EN ; 
 int CORE_CLK_PWRSAVE ; 
 int CORE_DLL_CLOCK_DISABLE ; 
 int CORE_DLL_EN ; 
 int CORE_DLL_LOCK ; 
 int CORE_DLL_PDN ; 
 int CORE_DLL_RST ; 
 int CORE_FLL_CYCLE_CNT ; 
 int FUNC0 (int,unsigned long) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*) ; 
 int FUNC7 (scalar_t__) ; 
 struct sdhci_msm_host* FUNC8 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct sdhci_host *host)
{
	struct mmc_host *mmc = host->mmc;
	struct sdhci_pltfm_host *pltfm_host = FUNC9(host);
	struct sdhci_msm_host *msm_host = FUNC8(pltfm_host);
	int wait_cnt = 50;
	unsigned long flags, xo_clk = 0;
	u32 config;
	const struct sdhci_msm_offset *msm_offset =
					msm_host->offset;

	if (msm_host->use_14lpp_dll_reset && !FUNC1(msm_host->xo_clk))
		xo_clk = FUNC2(msm_host->xo_clk);

	FUNC10(&host->lock, flags);

	/*
	 * Make sure that clock is always enabled when DLL
	 * tuning is in progress. Keeping PWRSAVE ON may
	 * turn off the clock.
	 */
	config = FUNC7(host->ioaddr + msm_offset->core_vendor_spec);
	config &= ~CORE_CLK_PWRSAVE;
	FUNC13(config, host->ioaddr + msm_offset->core_vendor_spec);

	if (msm_host->use_14lpp_dll_reset) {
		config = FUNC7(host->ioaddr +
				msm_offset->core_dll_config);
		config &= ~CORE_CK_OUT_EN;
		FUNC13(config, host->ioaddr +
				msm_offset->core_dll_config);

		config = FUNC7(host->ioaddr +
				msm_offset->core_dll_config_2);
		config |= CORE_DLL_CLOCK_DISABLE;
		FUNC13(config, host->ioaddr +
				msm_offset->core_dll_config_2);
	}

	config = FUNC7(host->ioaddr +
			msm_offset->core_dll_config);
	config |= CORE_DLL_RST;
	FUNC13(config, host->ioaddr +
			msm_offset->core_dll_config);

	config = FUNC7(host->ioaddr +
			msm_offset->core_dll_config);
	config |= CORE_DLL_PDN;
	FUNC13(config, host->ioaddr +
			msm_offset->core_dll_config);
	FUNC6(host);

	if (msm_host->use_14lpp_dll_reset &&
	    !FUNC1(msm_host->xo_clk)) {
		u32 mclk_freq = 0;

		config = FUNC7(host->ioaddr +
				msm_offset->core_dll_config_2);
		config &= CORE_FLL_CYCLE_CNT;
		if (config)
			mclk_freq = FUNC0((host->clock * 8),
					xo_clk);
		else
			mclk_freq = FUNC0((host->clock * 4),
					xo_clk);

		config = FUNC7(host->ioaddr +
				msm_offset->core_dll_config_2);
		config &= ~(0xFF << 10);
		config |= mclk_freq << 10;

		FUNC13(config, host->ioaddr +
				msm_offset->core_dll_config_2);
		/* wait for 5us before enabling DLL clock */
		FUNC12(5);
	}

	config = FUNC7(host->ioaddr +
			msm_offset->core_dll_config);
	config &= ~CORE_DLL_RST;
	FUNC13(config, host->ioaddr +
			msm_offset->core_dll_config);

	config = FUNC7(host->ioaddr +
			msm_offset->core_dll_config);
	config &= ~CORE_DLL_PDN;
	FUNC13(config, host->ioaddr +
			msm_offset->core_dll_config);

	if (msm_host->use_14lpp_dll_reset) {
		FUNC6(host);
		config = FUNC7(host->ioaddr +
				msm_offset->core_dll_config_2);
		config &= ~CORE_DLL_CLOCK_DISABLE;
		FUNC13(config, host->ioaddr +
				msm_offset->core_dll_config_2);
	}

	config = FUNC7(host->ioaddr +
			msm_offset->core_dll_config);
	config |= CORE_DLL_EN;
	FUNC13(config, host->ioaddr +
			msm_offset->core_dll_config);

	config = FUNC7(host->ioaddr +
			msm_offset->core_dll_config);
	config |= CORE_CK_OUT_EN;
	FUNC13(config, host->ioaddr +
			msm_offset->core_dll_config);

	/* Wait until DLL_LOCK bit of DLL_STATUS register becomes '1' */
	while (!(FUNC7(host->ioaddr + msm_offset->core_dll_status) &
		 CORE_DLL_LOCK)) {
		/* max. wait for 50us sec for LOCK bit to be set */
		if (--wait_cnt == 0) {
			FUNC3(FUNC4(mmc), "%s: DLL failed to LOCK\n",
			       FUNC5(mmc));
			FUNC11(&host->lock, flags);
			return -ETIMEDOUT;
		}
		FUNC12(1);
	}

	FUNC11(&host->lock, flags);
	return 0;
}