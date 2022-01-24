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
struct mmc_request {int /*<<< orphan*/  stop; TYPE_2__* data; int /*<<< orphan*/  cmd; int /*<<< orphan*/  sbc; } ;
struct device {int dummy; } ;
struct bcm2835_host {scalar_t__ ioaddr; TYPE_1__* pdev; struct mmc_request* mrq; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  blksz; int /*<<< orphan*/  blocks; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ SDARG ; 
 scalar_t__ SDCDIV ; 
 scalar_t__ SDCMD ; 
 scalar_t__ SDEDM ; 
 scalar_t__ SDHBCT ; 
 scalar_t__ SDHBLC ; 
 scalar_t__ SDHCFG ; 
 scalar_t__ SDHSTS ; 
 scalar_t__ SDRSP0 ; 
 scalar_t__ SDRSP1 ; 
 scalar_t__ SDRSP2 ; 
 scalar_t__ SDRSP3 ; 
 scalar_t__ SDTOUT ; 
 scalar_t__ SDVDD ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_host*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bcm2835_host *host)
{
	struct mmc_request *mrq = host->mrq;
	struct device *dev = &host->pdev->dev;

	if (mrq) {
		FUNC0(host, mrq->sbc, "sbc");
		FUNC0(host, mrq->cmd, "cmd");
		if (mrq->data) {
			FUNC1(dev, "data blocks %x blksz %x - err %d\n",
				mrq->data->blocks,
				mrq->data->blksz,
				mrq->data->error);
		}
		FUNC0(host, mrq->stop, "stop");
	}

	FUNC1(dev, "=========== REGISTER DUMP ===========\n");
	FUNC1(dev, "SDCMD  0x%08x\n", FUNC2(host->ioaddr + SDCMD));
	FUNC1(dev, "SDARG  0x%08x\n", FUNC2(host->ioaddr + SDARG));
	FUNC1(dev, "SDTOUT 0x%08x\n", FUNC2(host->ioaddr + SDTOUT));
	FUNC1(dev, "SDCDIV 0x%08x\n", FUNC2(host->ioaddr + SDCDIV));
	FUNC1(dev, "SDRSP0 0x%08x\n", FUNC2(host->ioaddr + SDRSP0));
	FUNC1(dev, "SDRSP1 0x%08x\n", FUNC2(host->ioaddr + SDRSP1));
	FUNC1(dev, "SDRSP2 0x%08x\n", FUNC2(host->ioaddr + SDRSP2));
	FUNC1(dev, "SDRSP3 0x%08x\n", FUNC2(host->ioaddr + SDRSP3));
	FUNC1(dev, "SDHSTS 0x%08x\n", FUNC2(host->ioaddr + SDHSTS));
	FUNC1(dev, "SDVDD  0x%08x\n", FUNC2(host->ioaddr + SDVDD));
	FUNC1(dev, "SDEDM  0x%08x\n", FUNC2(host->ioaddr + SDEDM));
	FUNC1(dev, "SDHCFG 0x%08x\n", FUNC2(host->ioaddr + SDHCFG));
	FUNC1(dev, "SDHBCT 0x%08x\n", FUNC2(host->ioaddr + SDHBCT));
	FUNC1(dev, "SDHBLC 0x%08x\n", FUNC2(host->ioaddr + SDHBLC));
	FUNC1(dev, "===========================================\n");
}