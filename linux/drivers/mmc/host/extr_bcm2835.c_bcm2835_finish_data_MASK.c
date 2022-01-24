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
struct mmc_data {int bytes_xfered; int blksz; int blocks; scalar_t__ error; } ;
struct device {int dummy; } ;
struct bcm2835_host {int hcfg; int data_complete; scalar_t__ ioaddr; scalar_t__ cmd; struct mmc_data* data; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ SDHCFG ; 
 int SDHCFG_BLOCK_IRPT_EN ; 
 int SDHCFG_DATA_IRPT_EN ; 
 scalar_t__ SDHSTS ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct bcm2835_host *host)
{
	struct device *dev = &host->pdev->dev;
	struct mmc_data *data;

	data = host->data;

	host->hcfg &= ~(SDHCFG_DATA_IRPT_EN | SDHCFG_BLOCK_IRPT_EN);
	FUNC3(host->hcfg, host->ioaddr + SDHCFG);

	data->bytes_xfered = data->error ? 0 : (data->blksz * data->blocks);

	host->data_complete = true;

	if (host->cmd) {
		/* Data managed to finish before the
		 * command completed. Make sure we do
		 * things in the proper order.
		 */
		FUNC1(dev, "Finished early - HSTS %08x\n",
			FUNC2(host->ioaddr + SDHSTS));
	} else {
		FUNC0(host);
	}
}