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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct thermal_zone_device {int dummy; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int is_tuning; struct device* dev; } ;
struct sdhci_host {int ier; } ;
struct mmc_ios {int clock; scalar_t__ timing; } ;
struct mmc_host {struct mmc_ios ios; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AC12_SCLK_SEL ; 
 scalar_t__ CAPA2_TSDR50 ; 
 int FUNC0 (int,int) ; 
 scalar_t__ DLL_SWT ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct thermal_zone_device*) ; 
 scalar_t__ MAX_PHASE_DELAY ; 
 scalar_t__ MMC_TIMING_UHS_SDR50 ; 
 int FUNC2 (struct thermal_zone_device*) ; 
 int SDHCI_INT_DATA_CRC ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_OMAP_AC12 ; 
 int /*<<< orphan*/  SDHCI_OMAP_CAPA2 ; 
 int /*<<< orphan*/  SDHCI_OMAP_DLL ; 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 struct sdhci_host* FUNC5 (struct mmc_host*) ; 
 scalar_t__ FUNC6 (struct mmc_host*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_omap_host*) ; 
 scalar_t__ FUNC8 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_omap_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_omap_host*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sdhci_omap_host* FUNC11 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC12 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct thermal_zone_device*,int*) ; 
 struct thermal_zone_device* FUNC16 (char*) ; 

__attribute__((used)) static int FUNC17(struct mmc_host *mmc, u32 opcode)
{
	struct sdhci_host *host = FUNC5(mmc);
	struct sdhci_pltfm_host *pltfm_host = FUNC12(host);
	struct sdhci_omap_host *omap_host = FUNC11(pltfm_host);
	struct thermal_zone_device *thermal_dev;
	struct device *dev = omap_host->dev;
	struct mmc_ios *ios = &mmc->ios;
	u32 start_window = 0, max_window = 0;
	bool single_point_failure = false;
	bool dcrc_was_enabled = false;
	u8 cur_match, prev_match = 0;
	u32 length = 0, max_len = 0;
	u32 phase_delay = 0;
	int temperature;
	int ret = 0;
	u32 reg;
	int i;

	/* clock tuning is not needed for upto 52MHz */
	if (ios->clock <= 52000000)
		return 0;

	reg = FUNC8(omap_host, SDHCI_OMAP_CAPA2);
	if (ios->timing == MMC_TIMING_UHS_SDR50 && !(reg & CAPA2_TSDR50))
		return 0;

	thermal_dev = FUNC16("cpu_thermal");
	if (FUNC1(thermal_dev)) {
		FUNC3(dev, "Unable to get thermal zone for tuning\n");
		return FUNC2(thermal_dev);
	}

	ret = FUNC15(thermal_dev, &temperature);
	if (ret)
		return ret;

	reg = FUNC8(omap_host, SDHCI_OMAP_DLL);
	reg |= DLL_SWT;
	FUNC10(omap_host, SDHCI_OMAP_DLL, reg);

	/*
	 * OMAP5/DRA74X/DRA72x Errata i802:
	 * DCRC error interrupts (MMCHS_STAT[21] DCRC=0x1) can occur
	 * during the tuning procedure. So disable it during the
	 * tuning procedure.
	 */
	if (host->ier & SDHCI_INT_DATA_CRC) {
		host->ier &= ~SDHCI_INT_DATA_CRC;
		dcrc_was_enabled = true;
	}

	omap_host->is_tuning = true;

	/*
	 * Stage 1: Search for a maximum pass window ignoring any
	 * any single point failures. If the tuning value ends up
	 * near it, move away from it in stage 2 below
	 */
	while (phase_delay <= MAX_PHASE_DELAY) {
		FUNC9(omap_host, phase_delay);

		cur_match = !FUNC6(mmc, opcode, NULL);
		if (cur_match) {
			if (prev_match) {
				length++;
			} else if (single_point_failure) {
				/* ignore single point failure */
				length++;
			} else {
				start_window = phase_delay;
				length = 1;
			}
		} else {
			single_point_failure = prev_match;
		}

		if (length > max_len) {
			max_window = start_window;
			max_len = length;
		}

		prev_match = cur_match;
		phase_delay += 4;
	}

	if (!max_len) {
		FUNC3(dev, "Unable to find match\n");
		ret = -EIO;
		goto tuning_error;
	}

	/*
	 * Assign tuning value as a ratio of maximum pass window based
	 * on temperature
	 */
	if (temperature < -20000)
		phase_delay = FUNC4(max_window + 4 * (max_len - 1) - 24,
				  max_window +
				  FUNC0(13 * max_len, 16) * 4);
	else if (temperature < 20000)
		phase_delay = max_window + FUNC0(9 * max_len, 16) * 4;
	else if (temperature < 40000)
		phase_delay = max_window + FUNC0(8 * max_len, 16) * 4;
	else if (temperature < 70000)
		phase_delay = max_window + FUNC0(7 * max_len, 16) * 4;
	else if (temperature < 90000)
		phase_delay = max_window + FUNC0(5 * max_len, 16) * 4;
	else if (temperature < 120000)
		phase_delay = max_window + FUNC0(4 * max_len, 16) * 4;
	else
		phase_delay = max_window + FUNC0(3 * max_len, 16) * 4;

	/*
	 * Stage 2: Search for a single point failure near the chosen tuning
	 * value in two steps. First in the +3 to +10 range and then in the
	 * +2 to -10 range. If found, move away from it in the appropriate
	 * direction by the appropriate amount depending on the temperature.
	 */
	for (i = 3; i <= 10; i++) {
		FUNC9(omap_host, phase_delay + i);

		if (FUNC6(mmc, opcode, NULL)) {
			if (temperature < 10000)
				phase_delay += i + 6;
			else if (temperature < 20000)
				phase_delay += i - 12;
			else if (temperature < 70000)
				phase_delay += i - 8;
			else
				phase_delay += i - 6;

			goto single_failure_found;
		}
	}

	for (i = 2; i >= -10; i--) {
		FUNC9(omap_host, phase_delay + i);

		if (FUNC6(mmc, opcode, NULL)) {
			if (temperature < 10000)
				phase_delay += i + 12;
			else if (temperature < 20000)
				phase_delay += i + 8;
			else if (temperature < 70000)
				phase_delay += i + 8;
			else if (temperature < 90000)
				phase_delay += i + 10;
			else
				phase_delay += i + 12;

			goto single_failure_found;
		}
	}

single_failure_found:
	reg = FUNC8(omap_host, SDHCI_OMAP_AC12);
	if (!(reg & AC12_SCLK_SEL)) {
		ret = -EIO;
		goto tuning_error;
	}

	FUNC9(omap_host, phase_delay);

	omap_host->is_tuning = false;

	goto ret;

tuning_error:
	omap_host->is_tuning = false;
	FUNC3(dev, "Tuning failed\n");
	FUNC7(omap_host);

ret:
	FUNC13(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
	/* Reenable forbidden interrupt */
	if (dcrc_was_enabled)
		host->ier |= SDHCI_INT_DATA_CRC;
	FUNC14(host, host->ier, SDHCI_INT_ENABLE);
	FUNC14(host, host->ier, SDHCI_SIGNAL_ENABLE);
	return ret;
}