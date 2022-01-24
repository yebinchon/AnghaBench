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
struct sdhci_omap_host {struct sdhci_host* host; } ;
struct sdhci_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC4 (struct sdhci_omap_host*,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sdhci_omap_host *omap_host,
				 unsigned int iov)
{
	int ret;
	struct sdhci_host *host = omap_host->host;
	struct mmc_host *mmc = host->mmc;

	ret = FUNC4(omap_host, false, 0);
	if (ret)
		return ret;

	if (!FUNC0(mmc->supply.vqmmc)) {
		ret = FUNC3(mmc->supply.vqmmc, iov, iov);
		if (ret) {
			FUNC1(FUNC2(mmc), "vqmmc set voltage failed\n");
			return ret;
		}
	}

	ret = FUNC4(omap_host, true, iov);
	if (ret)
		return ret;

	return 0;
}