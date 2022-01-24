#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtsx_pcr {TYPE_1__* slots; } ;
struct realtek_pci_sdmmc {int cookie; int /*<<< orphan*/  host_mutex; int /*<<< orphan*/  work; int /*<<< orphan*/  power_state; struct platform_device* pdev; struct mmc_host* mmc; struct rtsx_pcr* pcr; } ;
struct TYPE_5__ {struct pcr_handle* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcr_handle {struct rtsx_pcr* pcr; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  card_event; struct platform_device* p_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t RTSX_SD_CARD ; 
 int /*<<< orphan*/  SDMMC_POWER_OFF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct mmc_host* FUNC3 (int,TYPE_2__*) ; 
 struct realtek_pci_sdmmc* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct realtek_pci_sdmmc*) ; 
 int /*<<< orphan*/  FUNC7 (struct realtek_pci_sdmmc*) ; 
 int /*<<< orphan*/  rtsx_pci_sdmmc_card_event ; 
 int /*<<< orphan*/  sd_request ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct realtek_pci_sdmmc *host;
	struct rtsx_pcr *pcr;
	struct pcr_handle *handle = pdev->dev.platform_data;

	if (!handle)
		return -ENXIO;

	pcr = handle->pcr;
	if (!pcr)
		return -ENXIO;

	FUNC1(&(pdev->dev), ": Realtek PCI-E SDMMC controller found\n");

	mmc = FUNC3(sizeof(*host), &pdev->dev);
	if (!mmc)
		return -ENOMEM;

	host = FUNC4(mmc);
	host->pcr = pcr;
	host->mmc = mmc;
	host->pdev = pdev;
	host->cookie = -1;
	host->power_state = SDMMC_POWER_OFF;
	FUNC0(&host->work, sd_request);
	FUNC6(pdev, host);
	pcr->slots[RTSX_SD_CARD].p_dev = pdev;
	pcr->slots[RTSX_SD_CARD].card_event = rtsx_pci_sdmmc_card_event;

	FUNC5(&host->host_mutex);

	FUNC7(host);

	FUNC2(mmc);

	return 0;
}