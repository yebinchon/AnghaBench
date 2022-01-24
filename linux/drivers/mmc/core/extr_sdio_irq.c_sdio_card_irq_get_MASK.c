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
struct mmc_host {int caps2; int caps; TYPE_1__* ops; int /*<<< orphan*/  sdio_irqs; int /*<<< orphan*/  sdio_irq_thread; int /*<<< orphan*/  sdio_irq_thread_abort; int /*<<< orphan*/  claimed; } ;
struct mmc_card {struct mmc_host* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_sdio_irq ) (struct mmc_host*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MMC_CAP2_SDIO_IRQ_NOTHREAD ; 
 int MMC_CAP_SDIO_IRQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_host*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  sdio_irq_thread ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,int) ; 

__attribute__((used)) static int FUNC7(struct mmc_card *card)
{
	struct mmc_host *host = card->host;

	FUNC2(!host->claimed);

	if (!host->sdio_irqs++) {
		if (!(host->caps2 & MMC_CAP2_SDIO_IRQ_NOTHREAD)) {
			FUNC3(&host->sdio_irq_thread_abort, 0);
			host->sdio_irq_thread =
				FUNC4(sdio_irq_thread, host,
					    "ksdioirqd/%s", FUNC5(host));
			if (FUNC0(host->sdio_irq_thread)) {
				int err = FUNC1(host->sdio_irq_thread);
				host->sdio_irqs--;
				return err;
			}
		} else if (host->caps & MMC_CAP_SDIO_IRQ) {
			host->ops->enable_sdio_irq(host, 1);
		}
	}

	return 0;
}