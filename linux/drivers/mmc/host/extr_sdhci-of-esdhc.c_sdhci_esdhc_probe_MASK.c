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
struct sdhci_pltfm_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hs400_prepare_ddr; int /*<<< orphan*/  execute_tuning; int /*<<< orphan*/  start_signal_voltage_switch; } ;
struct sdhci_host {int tuning_delay; int /*<<< orphan*/  ocr_mask; int /*<<< orphan*/  mmc; int /*<<< orphan*/  quirks2; int /*<<< orphan*/  quirks; TYPE_2__ mmc_host_ops; } ;
struct sdhci_esdhc {int quirk_fixup_tuning; scalar_t__ vendor_ver; int quirk_ignore_data_inhibit; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  SDHCI_QUIRK2_BROKEN_HOST_CONTROL ; 
 int /*<<< orphan*/  SDHCI_QUIRK2_HOST_NO_CMD23 ; 
 int /*<<< orphan*/  SDHCI_QUIRK_BROKEN_CARD_DETECTION ; 
 int /*<<< orphan*/  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ; 
 int /*<<< orphan*/  SDHCI_QUIRK_NO_BUSY_IRQ ; 
 int /*<<< orphan*/  SDHCI_QUIRK_RESET_AFTER_REQUEST ; 
 scalar_t__ VENDOR_V_22 ; 
 int /*<<< orphan*/  esdhc_execute_tuning ; 
 int /*<<< orphan*/  esdhc_hs400_prepare_ddr ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct sdhci_host*) ; 
 int /*<<< orphan*/  esdhc_signal_voltage_switch ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*) ; 
 int FUNC8 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_esdhc_be_pdata ; 
 int /*<<< orphan*/  sdhci_esdhc_le_pdata ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 struct sdhci_host* FUNC11 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct sdhci_esdhc* FUNC12 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC13 (struct sdhci_host*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_fixup_tuning ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct device_node *np;
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_esdhc *esdhc;
	int ret;

	np = pdev->dev.of_node;

	if (FUNC7(np, "little-endian"))
		host = FUNC11(pdev, &sdhci_esdhc_le_pdata,
					sizeof(struct sdhci_esdhc));
	else
		host = FUNC11(pdev, &sdhci_esdhc_be_pdata,
					sizeof(struct sdhci_esdhc));

	if (FUNC0(host))
		return FUNC1(host);

	host->mmc_host_ops.start_signal_voltage_switch =
		esdhc_signal_voltage_switch;
	host->mmc_host_ops.execute_tuning = esdhc_execute_tuning;
	host->mmc_host_ops.hs400_prepare_ddr = esdhc_hs400_prepare_ddr;
	host->tuning_delay = 1;

	FUNC2(pdev, host);

	FUNC9(pdev);

	pltfm_host = FUNC13(host);
	esdhc = FUNC12(pltfm_host);
	if (FUNC14(soc_fixup_tuning))
		esdhc->quirk_fixup_tuning = true;
	else
		esdhc->quirk_fixup_tuning = false;

	if (esdhc->vendor_ver == VENDOR_V_22)
		host->quirks2 |= SDHCI_QUIRK2_HOST_NO_CMD23;

	if (esdhc->vendor_ver > VENDOR_V_22)
		host->quirks &= ~SDHCI_QUIRK_NO_BUSY_IRQ;

	if (FUNC6(NULL, NULL, "fsl,p2020-esdhc")) {
		host->quirks2 |= SDHCI_QUIRK_RESET_AFTER_REQUEST;
		host->quirks2 |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;
	}

	if (FUNC5(np, "fsl,p5040-esdhc") ||
	    FUNC5(np, "fsl,p5020-esdhc") ||
	    FUNC5(np, "fsl,p4080-esdhc") ||
	    FUNC5(np, "fsl,p1020-esdhc") ||
	    FUNC5(np, "fsl,t1040-esdhc"))
		host->quirks &= ~SDHCI_QUIRK_BROKEN_CARD_DETECTION;

	if (FUNC5(np, "fsl,ls1021a-esdhc"))
		host->quirks |= SDHCI_QUIRK_BROKEN_TIMEOUT_VAL;

	esdhc->quirk_ignore_data_inhibit = false;
	if (FUNC5(np, "fsl,p2020-esdhc")) {
		/*
		 * Freescale messed up with P2020 as it has a non-standard
		 * host control register
		 */
		host->quirks2 |= SDHCI_QUIRK2_BROKEN_HOST_CONTROL;
		esdhc->quirk_ignore_data_inhibit = true;
	}

	/* call to generic mmc_of_parse to support additional capabilities */
	ret = FUNC3(host->mmc);
	if (ret)
		goto err;

	FUNC4(np, &host->ocr_mask);

	ret = FUNC8(host);
	if (ret)
		goto err;

	return 0;
 err:
	FUNC10(pdev);
	return ret;
}