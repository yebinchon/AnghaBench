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
struct s3cmci_host {struct mmc_host* mmc; int /*<<< orphan*/  is2440; struct platform_device* pdev; } ;
struct s3c24xx_mci_pdata {scalar_t__ wprotect_invert; scalar_t__ no_detect; scalar_t__ no_wprotect; } ;
struct TYPE_5__ {struct s3c24xx_mci_pdata* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mmc_host {int /*<<< orphan*/  caps2; int /*<<< orphan*/  caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MMC_CAP2_NO_WRITE_PROTECT ; 
 int /*<<< orphan*/  MMC_CAP2_RO_ACTIVE_HIGH ; 
 int /*<<< orphan*/  MMC_CAP_NEEDS_POLL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mmc_host*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mmc_host*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct platform_device*) ; 
 struct s3c24xx_mci_pdata s3cmci_def_pdata ; 

__attribute__((used)) static int FUNC8(struct s3cmci_host *host)
{
	struct platform_device *pdev = host->pdev;
	struct mmc_host *mmc = host->mmc;
	struct s3c24xx_mci_pdata *pdata;
	int i, ret;

	host->is2440 = FUNC7(pdev)->driver_data;

	for (i = FUNC0(5); i <= FUNC0(10); i++) {
		ret = FUNC4(i, FUNC2(&pdev->dev));
		if (ret) {
			FUNC1(&pdev->dev, "failed to get gpio %d\n", i);

			for (i--; i >= FUNC0(5); i--)
				FUNC3(i);

			return ret;
		}
	}

	if (!pdev->dev.platform_data)
		pdev->dev.platform_data = &s3cmci_def_pdata;

	pdata = pdev->dev.platform_data;

	if (pdata->no_wprotect)
		mmc->caps2 |= MMC_CAP2_NO_WRITE_PROTECT;

	if (pdata->no_detect)
		mmc->caps |= MMC_CAP_NEEDS_POLL;

	if (pdata->wprotect_invert)
		mmc->caps2 |= MMC_CAP2_RO_ACTIVE_HIGH;

	/* If we get -ENOENT we have no card detect GPIO line */
	ret = FUNC5(mmc, "cd", 0, false, 0, NULL);
	if (ret != -ENOENT) {
		FUNC1(&pdev->dev, "error requesting GPIO for CD %d\n",
			ret);
		return ret;
	}

	ret = FUNC6(host->mmc, "wp", 0, 0, NULL);
	if (ret != -ENOENT) {
		FUNC1(&pdev->dev, "error requesting GPIO for WP %d\n",
			ret);
		return ret;
	}

	return 0;
}