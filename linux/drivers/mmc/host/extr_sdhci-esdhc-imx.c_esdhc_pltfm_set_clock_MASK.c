#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sdhci_pltfm_host {unsigned int clock; } ;
struct sdhci_host {scalar_t__ ioaddr; TYPE_2__* mmc; } ;
struct pltfm_imx_data {scalar_t__ is_ddr; TYPE_1__* socdata; } ;
struct TYPE_4__ {unsigned int actual_clock; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ESDHC_CLOCK_HCKEN ; 
 int ESDHC_CLOCK_IPGEN ; 
 int ESDHC_CLOCK_MASK ; 
 int ESDHC_CLOCK_PEREN ; 
 int ESDHC_DIVIDER_SHIFT ; 
 scalar_t__ ESDHC_DLL_CTRL ; 
 int ESDHC_FLAG_ERR010450 ; 
 int ESDHC_PREDIV_SHIFT ; 
 int /*<<< orphan*/  ESDHC_SYSTEM_CONTROL ; 
 scalar_t__ ESDHC_VENDOR_SPEC ; 
 int ESDHC_VENDOR_SPEC_FRC_SDCLK_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct pltfm_imx_data*) ; 
 scalar_t__ FUNC3 (struct pltfm_imx_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (scalar_t__) ; 
 struct pltfm_imx_data* FUNC8 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC9 (struct sdhci_host*) ; 
 int FUNC10 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC13(struct sdhci_host *host,
					 unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC9(host);
	struct pltfm_imx_data *imx_data = FUNC8(pltfm_host);
	unsigned int host_clock = pltfm_host->clock;
	int ddr_pre_div = imx_data->is_ddr ? 2 : 1;
	int pre_div = 1;
	int div = 1;
	u32 temp, val;

	if (FUNC2(imx_data)) {
		val = FUNC7(host->ioaddr + ESDHC_VENDOR_SPEC);
		FUNC12(val & ~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON,
			host->ioaddr + ESDHC_VENDOR_SPEC);
	}

	if (clock == 0) {
		host->mmc->actual_clock = 0;
		return;
	}

	/* For i.MX53 eSDHCv3, SYSCTL.SDCLKFS may not be set to 0. */
	if (FUNC3(imx_data)) {
		/*
		 * According to the i.MX53 reference manual, if DLLCTRL[10] can
		 * be set, then the controller is eSDHCv3, else it is eSDHCv2.
		 */
		val = FUNC7(host->ioaddr + ESDHC_DLL_CTRL);
		FUNC12(val | FUNC0(10), host->ioaddr + ESDHC_DLL_CTRL);
		temp = FUNC7(host->ioaddr + ESDHC_DLL_CTRL);
		FUNC12(val, host->ioaddr + ESDHC_DLL_CTRL);
		if (temp & FUNC0(10))
			pre_div = 2;
	}

	temp = FUNC10(host, ESDHC_SYSTEM_CONTROL);
	temp &= ~(ESDHC_CLOCK_IPGEN | ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN
		| ESDHC_CLOCK_MASK);
	FUNC11(host, temp, ESDHC_SYSTEM_CONTROL);

	if (imx_data->socdata->flags & ESDHC_FLAG_ERR010450) {
		unsigned int max_clock;

		max_clock = imx_data->is_ddr ? 45000000 : 150000000;

		clock = FUNC5(clock, max_clock);
	}

	while (host_clock / (16 * pre_div * ddr_pre_div) > clock &&
			pre_div < 256)
		pre_div *= 2;

	while (host_clock / (div * pre_div * ddr_pre_div) > clock && div < 16)
		div++;

	host->mmc->actual_clock = host_clock / (div * pre_div * ddr_pre_div);
	FUNC1(FUNC6(host->mmc), "desired SD clock: %d, actual: %d\n",
		clock, host->mmc->actual_clock);

	pre_div >>= 1;
	div--;

	temp = FUNC10(host, ESDHC_SYSTEM_CONTROL);
	temp |= (ESDHC_CLOCK_IPGEN | ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN
		| (div << ESDHC_DIVIDER_SHIFT)
		| (pre_div << ESDHC_PREDIV_SHIFT));
	FUNC11(host, temp, ESDHC_SYSTEM_CONTROL);

	if (FUNC2(imx_data)) {
		val = FUNC7(host->ioaddr + ESDHC_VENDOR_SPEC);
		FUNC12(val | ESDHC_VENDOR_SPEC_FRC_SDCLK_ON,
			host->ioaddr + ESDHC_VENDOR_SPEC);
	}

	FUNC4(1);
}