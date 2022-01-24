#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct au1xmmc_host {int flags; TYPE_2__* mmc; int /*<<< orphan*/  ioarea; scalar_t__ iobase; int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  finish_task; int /*<<< orphan*/  data_task; TYPE_1__* platdata; } ;
struct TYPE_6__ {int caps; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cd_setup ) (TYPE_2__*,int /*<<< orphan*/ ) ;scalar_t__ led; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xmmc_host*) ; 
 int HOST_F_DBDMA ; 
 int MMC_CAP_NEEDS_POLL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 struct au1xmmc_host* FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct au1xmmc_host *host = FUNC14(pdev);

	if (host) {
		FUNC13(host->mmc);

#ifdef CONFIG_LEDS_CLASS
		if (host->platdata && host->platdata->led)
			led_classdev_unregister(host->platdata->led);
#endif

		if (host->platdata && host->platdata->cd_setup &&
		    !(host->mmc->caps & MMC_CAP_NEEDS_POLL))
			host->platdata->cd_setup(host->mmc, 0);

		FUNC3(0, FUNC2(host));
		FUNC3(0, FUNC0(host));
		FUNC3(0, FUNC1(host));
		FUNC18(); /* drain writebuffer */

		FUNC17(&host->data_task);
		FUNC17(&host->finish_task);

		if (host->flags & HOST_F_DBDMA)
			FUNC4(host);

		FUNC5(host, 0);

		FUNC6(host->clk);
		FUNC7(host->clk);

		FUNC8(host->irq, host);
		FUNC9((void *)host->iobase);
		FUNC15(host->ioarea);
		FUNC10(host->ioarea);

		FUNC12(host->mmc);
	}
	return 0;
}