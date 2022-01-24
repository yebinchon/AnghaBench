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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct sdhci_at91_priv {int /*<<< orphan*/  gck; int /*<<< orphan*/  mainck; int /*<<< orphan*/  hclock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 unsigned int SDHCI_AT91_PRESET_COMMON_CONF ; 
 scalar_t__ SDHCI_CAPABILITIES ; 
 scalar_t__ SDHCI_CAPABILITIES_1 ; 
 unsigned int SDHCI_CLOCK_BASE_SHIFT ; 
 unsigned int SDHCI_CLOCK_MUL_MASK ; 
 unsigned int SDHCI_CLOCK_MUL_SHIFT ; 
 unsigned int SDHCI_CLOCK_V3_BASE_MASK ; 
 scalar_t__ SDHCI_PRESET_FOR_DDR50 ; 
 scalar_t__ SDHCI_PRESET_FOR_SDR104 ; 
 scalar_t__ SDHCI_PRESET_FOR_SDR12 ; 
 scalar_t__ SDHCI_PRESET_FOR_SDR25 ; 
 scalar_t__ SDHCI_PRESET_FOR_SDR50 ; 
 scalar_t__ SDMMC_CACR ; 
 unsigned int SDMMC_CACR_CAPWREN ; 
 unsigned int SDMMC_CACR_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct sdhci_host* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 struct sdhci_at91_priv* FUNC9 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC10 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct sdhci_host *host = FUNC6(dev);
	struct sdhci_pltfm_host *pltfm_host = FUNC10(host);
	struct sdhci_at91_priv *priv = FUNC9(pltfm_host);
	int ret;
	unsigned int			caps0, caps1;
	unsigned int			clk_base, clk_mul;
	unsigned int			gck_rate, real_gck_rate;
	unsigned int			preset_div;

	/*
	 * The mult clock is provided by as a generated clock by the PMC
	 * controller. In order to set the rate of gck, we have to get the
	 * base clock rate and the clock mult from capabilities.
	 */
	FUNC3(priv->hclock);
	caps0 = FUNC8(host->ioaddr + SDHCI_CAPABILITIES);
	caps1 = FUNC8(host->ioaddr + SDHCI_CAPABILITIES_1);
	clk_base = (caps0 & SDHCI_CLOCK_V3_BASE_MASK) >> SDHCI_CLOCK_BASE_SHIFT;
	clk_mul = (caps1 & SDHCI_CLOCK_MUL_MASK) >> SDHCI_CLOCK_MUL_SHIFT;
	gck_rate = clk_base * 1000000 * (clk_mul + 1);
	ret = FUNC4(priv->gck, gck_rate);
	if (ret < 0) {
		FUNC5(dev, "failed to set gck");
		FUNC1(priv->hclock);
		return ret;
	}
	/*
	 * We need to check if we have the requested rate for gck because in
	 * some cases this rate could be not supported. If it happens, the rate
	 * is the closest one gck can provide. We have to update the value
	 * of clk mul.
	 */
	real_gck_rate = FUNC2(priv->gck);
	if (real_gck_rate != gck_rate) {
		clk_mul = real_gck_rate / (clk_base * 1000000) - 1;
		caps1 &= (~SDHCI_CLOCK_MUL_MASK);
		caps1 |= ((clk_mul << SDHCI_CLOCK_MUL_SHIFT) &
			  SDHCI_CLOCK_MUL_MASK);
		/* Set capabilities in r/w mode. */
		FUNC11(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN,
		       host->ioaddr + SDMMC_CACR);
		FUNC11(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
		/* Set capabilities in ro mode. */
		FUNC11(0, host->ioaddr + SDMMC_CACR);
		FUNC7(dev, "update clk mul to %u as gck rate is %u Hz\n",
			 clk_mul, real_gck_rate);
	}

	/*
	 * We have to set preset values because it depends on the clk_mul
	 * value. Moreover, SDR104 is supported in a degraded mode since the
	 * maximum sd clock value is 120 MHz instead of 208 MHz. For that
	 * reason, we need to use presets to support SDR104.
	 */
	preset_div = FUNC0(real_gck_rate, 24000000) - 1;
	FUNC12(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
	       host->ioaddr + SDHCI_PRESET_FOR_SDR12);
	preset_div = FUNC0(real_gck_rate, 50000000) - 1;
	FUNC12(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
	       host->ioaddr + SDHCI_PRESET_FOR_SDR25);
	preset_div = FUNC0(real_gck_rate, 100000000) - 1;
	FUNC12(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
	       host->ioaddr + SDHCI_PRESET_FOR_SDR50);
	preset_div = FUNC0(real_gck_rate, 120000000) - 1;
	FUNC12(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
	       host->ioaddr + SDHCI_PRESET_FOR_SDR104);
	preset_div = FUNC0(real_gck_rate, 50000000) - 1;
	FUNC12(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
	       host->ioaddr + SDHCI_PRESET_FOR_DDR50);

	FUNC3(priv->mainck);
	FUNC3(priv->gck);

	return 0;
}