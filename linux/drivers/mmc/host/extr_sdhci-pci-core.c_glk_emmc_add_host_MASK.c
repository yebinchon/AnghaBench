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
struct sdhci_pci_slot {struct sdhci_host* host; TYPE_2__* chip; } ;
struct sdhci_host {int flags; int /*<<< orphan*/  mmc; scalar_t__ ioaddr; } ;
struct device {int dummy; } ;
struct cqhci_host {int /*<<< orphan*/  caps; int /*<<< orphan*/ * ops; int /*<<< orphan*/  quirks; scalar_t__ mmio; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_QUIRK_SHORT_TXFR_DESC_SZ ; 
 int /*<<< orphan*/  CQHCI_TASK_DESC_SZ_128 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SDHCI_USE_64_BIT_DMA ; 
 int FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct cqhci_host*,int /*<<< orphan*/ ,int) ; 
 struct cqhci_host* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glk_cqhci_ops ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC5(struct sdhci_pci_slot *slot)
{
	struct device *dev = &slot->chip->pdev->dev;
	struct sdhci_host *host = slot->host;
	struct cqhci_host *cq_host;
	bool dma64;
	int ret;

	ret = FUNC4(host);
	if (ret)
		return ret;

	cq_host = FUNC2(dev, sizeof(*cq_host), GFP_KERNEL);
	if (!cq_host) {
		ret = -ENOMEM;
		goto cleanup;
	}

	cq_host->mmio = host->ioaddr + 0x200;
	cq_host->quirks |= CQHCI_QUIRK_SHORT_TXFR_DESC_SZ;
	cq_host->ops = &glk_cqhci_ops;

	dma64 = host->flags & SDHCI_USE_64_BIT_DMA;
	if (dma64)
		cq_host->caps |= CQHCI_TASK_DESC_SZ_128;

	ret = FUNC1(cq_host, host->mmc, dma64);
	if (ret)
		goto cleanup;

	ret = FUNC0(host);
	if (ret)
		goto cleanup;

	return 0;

cleanup:
	FUNC3(host);
	return ret;
}