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
struct resource {int start; } ;
struct au1xmmc_host {int flags; void* rx_chan; void* tx_chan; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU1XMMC_DESCRIPTOR_COUNT ; 
 int ENODEV ; 
 int HOST_F_DBDMA ; 
 int HOST_F_DMA ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  au1xmmc_dbdma_callback ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int memid ; 
 struct resource* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct au1xmmc_host *host)
{
	struct resource *res;
	int txid, rxid;

	res = FUNC5(host->pdev, IORESOURCE_DMA, 0);
	if (!res)
		return -ENODEV;
	txid = res->start;

	res = FUNC5(host->pdev, IORESOURCE_DMA, 1);
	if (!res)
		return -ENODEV;
	rxid = res->start;

	if (!memid)
		return -ENODEV;

	host->tx_chan = FUNC0(memid, txid,
				au1xmmc_dbdma_callback, (void *)host);
	if (!host->tx_chan) {
		FUNC4(&host->pdev->dev, "cannot allocate TX DMA\n");
		return -ENODEV;
	}

	host->rx_chan = FUNC0(rxid, memid,
				au1xmmc_dbdma_callback, (void *)host);
	if (!host->rx_chan) {
		FUNC4(&host->pdev->dev, "cannot allocate RX DMA\n");
		FUNC1(host->tx_chan);
		return -ENODEV;
	}

	FUNC3(host->tx_chan, 8);
	FUNC3(host->rx_chan, 8);

	FUNC2(host->tx_chan, AU1XMMC_DESCRIPTOR_COUNT);
	FUNC2(host->rx_chan, AU1XMMC_DESCRIPTOR_COUNT);

	/* DBDMA is good to go */
	host->flags |= HOST_F_DMA | HOST_F_DBDMA;

	return 0;
}