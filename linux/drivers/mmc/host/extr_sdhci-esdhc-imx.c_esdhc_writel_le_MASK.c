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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct pltfm_imx_data {scalar_t__ multiblock_status; TYPE_1__* socdata; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ESDHC_CTRL_D3CD ; 
 int ESDHC_FLAG_MULTIBLK_NO_INT ; 
 int ESDHC_INT_VENDOR_SPEC_DMA_ERR ; 
 scalar_t__ ESDHC_VENDOR_SPEC ; 
 int ESDHC_VENDOR_SPEC_SDIO_QUIRK ; 
 int MMC_STOP_TRANSMISSION ; 
 scalar_t__ MULTIBLK_IN_PROCESS ; 
 int SDHCI_CMD_ABORTCMD ; 
 scalar_t__ SDHCI_HOST_CONTROL ; 
 int SDHCI_INT_ADMA_ERROR ; 
 int SDHCI_INT_CARD_INT ; 
 int SDHCI_INT_DATA_END ; 
 int SDHCI_INT_ENABLE ; 
 int SDHCI_INT_STATUS ; 
 int SDHCI_SIGNAL_ENABLE ; 
 scalar_t__ SDHCI_TRANSFER_MODE ; 
 scalar_t__ WAIT_FOR_INT ; 
 int /*<<< orphan*/  FUNC0 (struct pltfm_imx_data*) ; 
 int FUNC1 (scalar_t__) ; 
 struct pltfm_imx_data* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host, u32 val, int reg)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct pltfm_imx_data *imx_data = FUNC2(pltfm_host);
	u32 data;

	if (FUNC4(reg == SDHCI_INT_ENABLE || reg == SDHCI_SIGNAL_ENABLE ||
			reg == SDHCI_INT_STATUS)) {
		if ((val & SDHCI_INT_CARD_INT) && !FUNC0(imx_data)) {
			/*
			 * Clear and then set D3CD bit to avoid missing the
			 * card interrupt. This is an eSDHC controller problem
			 * so we need to apply the following workaround: clear
			 * and set D3CD bit will make eSDHC re-sample the card
			 * interrupt. In case a card interrupt was lost,
			 * re-sample it by the following steps.
			 */
			data = FUNC1(host->ioaddr + SDHCI_HOST_CONTROL);
			data &= ~ESDHC_CTRL_D3CD;
			FUNC5(data, host->ioaddr + SDHCI_HOST_CONTROL);
			data |= ESDHC_CTRL_D3CD;
			FUNC5(data, host->ioaddr + SDHCI_HOST_CONTROL);
		}

		if (val & SDHCI_INT_ADMA_ERROR) {
			val &= ~SDHCI_INT_ADMA_ERROR;
			val |= ESDHC_INT_VENDOR_SPEC_DMA_ERR;
		}
	}

	if (FUNC4((imx_data->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT)
				&& (reg == SDHCI_INT_STATUS)
				&& (val & SDHCI_INT_DATA_END))) {
			u32 v;
			v = FUNC1(host->ioaddr + ESDHC_VENDOR_SPEC);
			v &= ~ESDHC_VENDOR_SPEC_SDIO_QUIRK;
			FUNC5(v, host->ioaddr + ESDHC_VENDOR_SPEC);

			if (imx_data->multiblock_status == MULTIBLK_IN_PROCESS)
			{
				/* send a manual CMD12 with RESPTYP=none */
				data = MMC_STOP_TRANSMISSION << 24 |
				       SDHCI_CMD_ABORTCMD << 16;
				FUNC5(data, host->ioaddr + SDHCI_TRANSFER_MODE);
				imx_data->multiblock_status = WAIT_FOR_INT;
			}
	}

	FUNC5(val, host->ioaddr + reg);
}