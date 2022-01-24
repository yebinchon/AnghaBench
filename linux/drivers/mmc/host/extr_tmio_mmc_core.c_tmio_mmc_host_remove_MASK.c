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
struct tmio_mmc_host {scalar_t__ native_hotplug; int /*<<< orphan*/  delayed_reset_work; int /*<<< orphan*/  done; TYPE_1__* pdata; struct mmc_host* mmc; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_TRANSACTION_CTL ; 
 int TMIO_MMC_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tmio_mmc_host*) ; 

void FUNC11(struct tmio_mmc_host *host)
{
	struct platform_device *pdev = host->pdev;
	struct mmc_host *mmc = host->mmc;

	FUNC6(&pdev->dev);

	if (host->pdata->flags & TMIO_MMC_SDIO_IRQ)
		FUNC9(host, CTL_TRANSACTION_CTL, 0x0000);

	FUNC2(&pdev->dev);

	FUNC3(mmc);
	FUNC1(&host->done);
	FUNC0(&host->delayed_reset_work);
	FUNC10(host);

	FUNC5(&pdev->dev);
	if (host->native_hotplug)
		FUNC7(&pdev->dev);
	FUNC8(&pdev->dev);
	FUNC4(&pdev->dev);
}