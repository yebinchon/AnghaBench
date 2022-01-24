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
struct realtek_pci_ms {int /*<<< orphan*/  handle_req; int /*<<< orphan*/  host_mutex; struct platform_device* pdev; struct memstick_host* msh; struct rtsx_pcr* pcr; } ;
struct TYPE_5__ {struct pcr_handle* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcr_handle {struct rtsx_pcr* pcr; } ;
struct memstick_host {int /*<<< orphan*/  caps; int /*<<< orphan*/  set_param; int /*<<< orphan*/  request; } ;
struct TYPE_4__ {int /*<<< orphan*/  card_event; struct platform_device* p_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMSTICK_CAP_PAR4 ; 
 size_t RTSX_MS_CARD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (struct memstick_host*) ; 
 struct memstick_host* FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct memstick_host*) ; 
 struct realtek_pci_ms* FUNC5 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct realtek_pci_ms*) ; 
 int /*<<< orphan*/  rtsx_pci_ms_card_event ; 
 int /*<<< orphan*/  rtsx_pci_ms_handle_req ; 
 int /*<<< orphan*/  rtsx_pci_ms_request ; 
 int /*<<< orphan*/  rtsx_pci_ms_set_param ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct memstick_host *msh;
	struct realtek_pci_ms *host;
	struct rtsx_pcr *pcr;
	struct pcr_handle *handle = pdev->dev.platform_data;
	int rc;

	if (!handle)
		return -ENXIO;

	pcr = handle->pcr;
	if (!pcr)
		return -ENXIO;

	FUNC1(&(pdev->dev),
			": Realtek PCI-E Memstick controller found\n");

	msh = FUNC3(sizeof(*host), &pdev->dev);
	if (!msh)
		return -ENOMEM;

	host = FUNC5(msh);
	host->pcr = pcr;
	host->msh = msh;
	host->pdev = pdev;
	FUNC7(pdev, host);
	pcr->slots[RTSX_MS_CARD].p_dev = pdev;
	pcr->slots[RTSX_MS_CARD].card_event = rtsx_pci_ms_card_event;

	FUNC6(&host->host_mutex);

	FUNC0(&host->handle_req, rtsx_pci_ms_handle_req);
	msh->request = rtsx_pci_ms_request;
	msh->set_param = rtsx_pci_ms_set_param;
	msh->caps = MEMSTICK_CAP_PAR4;

	rc = FUNC2(msh);
	if (rc) {
		FUNC4(msh);
		return rc;
	}

	return 0;
}