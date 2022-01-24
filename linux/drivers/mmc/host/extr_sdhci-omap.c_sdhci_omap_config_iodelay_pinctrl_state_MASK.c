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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_omap_host {int flags; struct pinctrl_state** pinctrl_state; struct pinctrl_state* pinctrl; struct device* dev; struct sdhci_host* host; } ;
struct sdhci_host {struct mmc_host* mmc; } ;
struct pinctrl_state {int dummy; } ;
struct mmc_host {int /*<<< orphan*/  caps2; int /*<<< orphan*/  caps; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  MMC_CAP2_HS200_1_8V_SDR ; 
 int /*<<< orphan*/  MMC_CAP_1_8V_DDR ; 
 int /*<<< orphan*/  MMC_CAP_3_3V_DDR ; 
 int /*<<< orphan*/  MMC_CAP_MMC_HIGHSPEED ; 
 int /*<<< orphan*/  MMC_CAP_SD_HIGHSPEED ; 
 int /*<<< orphan*/  MMC_CAP_UHS_DDR50 ; 
 int /*<<< orphan*/  MMC_CAP_UHS_SDR104 ; 
 int /*<<< orphan*/  MMC_CAP_UHS_SDR12 ; 
 int /*<<< orphan*/  MMC_CAP_UHS_SDR25 ; 
 int /*<<< orphan*/  MMC_CAP_UHS_SDR50 ; 
 size_t MMC_TIMING_LEGACY ; 
 size_t MMC_TIMING_MMC_DDR52 ; 
 size_t MMC_TIMING_MMC_HS ; 
 int MMC_TIMING_MMC_HS200 ; 
 size_t MMC_TIMING_SD_HS ; 
 size_t MMC_TIMING_UHS_DDR50 ; 
 size_t MMC_TIMING_UHS_SDR104 ; 
 size_t MMC_TIMING_UHS_SDR12 ; 
 size_t MMC_TIMING_UHS_SDR25 ; 
 size_t MMC_TIMING_UHS_SDR50 ; 
 int FUNC1 (struct pinctrl_state*) ; 
 int SDHCI_OMAP_REQUIRE_IODELAY ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct pinctrl_state** FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct pinctrl_state* FUNC4 (struct device*) ; 
 struct pinctrl_state* FUNC5 (struct pinctrl_state*,char*) ; 
 struct pinctrl_state* FUNC6 (struct sdhci_omap_host*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sdhci_omap_host
						   *omap_host)
{
	struct device *dev = omap_host->dev;
	struct sdhci_host *host = omap_host->host;
	struct mmc_host *mmc = host->mmc;
	u32 *caps = &mmc->caps;
	u32 *caps2 = &mmc->caps2;
	struct pinctrl_state *state;
	struct pinctrl_state **pinctrl_state;

	if (!(omap_host->flags & SDHCI_OMAP_REQUIRE_IODELAY))
		return 0;

	pinctrl_state = FUNC3(dev,
				     MMC_TIMING_MMC_HS200 + 1,
				     sizeof(*pinctrl_state),
				     GFP_KERNEL);
	if (!pinctrl_state)
		return -ENOMEM;

	omap_host->pinctrl = FUNC4(omap_host->dev);
	if (FUNC0(omap_host->pinctrl)) {
		FUNC2(dev, "Cannot get pinctrl\n");
		return FUNC1(omap_host->pinctrl);
	}

	state = FUNC5(omap_host->pinctrl, "default");
	if (FUNC0(state)) {
		FUNC2(dev, "no pinctrl state for default mode\n");
		return FUNC1(state);
	}
	pinctrl_state[MMC_TIMING_LEGACY] = state;

	state = FUNC6(omap_host, "sdr104", caps,
						 MMC_CAP_UHS_SDR104);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_UHS_SDR104] = state;

	state = FUNC6(omap_host, "ddr50", caps,
						 MMC_CAP_UHS_DDR50);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_UHS_DDR50] = state;

	state = FUNC6(omap_host, "sdr50", caps,
						 MMC_CAP_UHS_SDR50);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_UHS_SDR50] = state;

	state = FUNC6(omap_host, "sdr25", caps,
						 MMC_CAP_UHS_SDR25);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_UHS_SDR25] = state;

	state = FUNC6(omap_host, "sdr12", caps,
						 MMC_CAP_UHS_SDR12);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_UHS_SDR12] = state;

	state = FUNC6(omap_host, "ddr_1_8v", caps,
						 MMC_CAP_1_8V_DDR);
	if (!FUNC0(state)) {
		pinctrl_state[MMC_TIMING_MMC_DDR52] = state;
	} else {
		state = FUNC6(omap_host, "ddr_3_3v",
							 caps,
							 MMC_CAP_3_3V_DDR);
		if (!FUNC0(state))
			pinctrl_state[MMC_TIMING_MMC_DDR52] = state;
	}

	state = FUNC6(omap_host, "hs", caps,
						 MMC_CAP_SD_HIGHSPEED);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_SD_HS] = state;

	state = FUNC6(omap_host, "hs", caps,
						 MMC_CAP_MMC_HIGHSPEED);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_MMC_HS] = state;

	state = FUNC6(omap_host, "hs200_1_8v", caps2,
						 MMC_CAP2_HS200_1_8V_SDR);
	if (!FUNC0(state))
		pinctrl_state[MMC_TIMING_MMC_HS200] = state;

	omap_host->pinctrl_state = pinctrl_state;

	return 0;
}