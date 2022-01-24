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
typedef  int u32 ;
struct sdhci_tegra {int ddr_signaling; int /*<<< orphan*/  dqs_trim; scalar_t__ default_tap; scalar_t__ tuned_tap_delay; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int tuning_loop_count; } ;

/* Variables and functions */
#define  MMC_TIMING_MMC_DDR52 133 
#define  MMC_TIMING_MMC_HS200 132 
#define  MMC_TIMING_MMC_HS400 131 
#define  MMC_TIMING_UHS_DDR50 130 
#define  MMC_TIMING_UHS_SDR104 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int /*<<< orphan*/  SDHCI_TEGRA_VNDR_TUN_CTRL1_0 ; 
 int /*<<< orphan*/  SDHCI_VNDR_TUN_CTRL0_0 ; 
 int SDHCI_VNDR_TUN_CTRL0_MUL_M_MASK ; 
 int SDHCI_VNDR_TUN_CTRL0_MUL_M_SHIFT ; 
 int SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_MASK ; 
 int SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_SHIFT ; 
 int SDHCI_VNDR_TUN_CTRL0_TUN_ITER_MASK ; 
 int SDHCI_VNDR_TUN_CTRL0_TUN_ITER_SHIFT ; 
 int TRIES_128 ; 
 int TRIES_256 ; 
 struct sdhci_tegra* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct sdhci_host *host,
					  unsigned timing)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_tegra *tegra_host = FUNC0(pltfm_host);
	bool set_default_tap = false;
	bool set_dqs_trim = false;
	bool do_hs400_dll_cal = false;
	u8 iter = TRIES_256;
	u32 val;

	tegra_host->ddr_signaling = false;
	switch (timing) {
	case MMC_TIMING_UHS_SDR50:
		break;
	case MMC_TIMING_UHS_SDR104:
	case MMC_TIMING_MMC_HS200:
		/* Don't set default tap on tunable modes. */
		iter = TRIES_128;
		break;
	case MMC_TIMING_MMC_HS400:
		set_dqs_trim = true;
		do_hs400_dll_cal = true;
		iter = TRIES_128;
		break;
	case MMC_TIMING_MMC_DDR52:
	case MMC_TIMING_UHS_DDR50:
		tegra_host->ddr_signaling = true;
		set_default_tap = true;
		break;
	default:
		set_default_tap = true;
		break;
	}

	val = FUNC2(host, SDHCI_VNDR_TUN_CTRL0_0);
	val &= ~(SDHCI_VNDR_TUN_CTRL0_TUN_ITER_MASK |
		 SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_MASK |
		 SDHCI_VNDR_TUN_CTRL0_MUL_M_MASK);
	val |= (iter << SDHCI_VNDR_TUN_CTRL0_TUN_ITER_SHIFT |
		0 << SDHCI_VNDR_TUN_CTRL0_START_TAP_VAL_SHIFT |
		1 << SDHCI_VNDR_TUN_CTRL0_MUL_M_SHIFT);
	FUNC4(host, val, SDHCI_VNDR_TUN_CTRL0_0);
	FUNC4(host, 0, SDHCI_TEGRA_VNDR_TUN_CTRL1_0);

	host->tuning_loop_count = (iter == TRIES_128) ? 128 : 256;

	FUNC3(host, timing);

	FUNC6(host);

	if (tegra_host->tuned_tap_delay && !set_default_tap)
		FUNC8(host, tegra_host->tuned_tap_delay);
	else
		FUNC8(host, tegra_host->default_tap);

	if (set_dqs_trim)
		FUNC7(host, tegra_host->dqs_trim);

	if (do_hs400_dll_cal)
		FUNC5(host);
}