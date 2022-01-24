#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sdhci_host {int quirks2; int flags; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int SDHCI_QUIRK2_BROKEN_64_BIT_DMA ; 
 int SDHCI_USE_64_BIT_DMA ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sdhci_host *host)
{
	struct mmc_host *mmc = host->mmc;
	struct device *dev = FUNC2(mmc);
	int ret = -EINVAL;

	if (host->quirks2 & SDHCI_QUIRK2_BROKEN_64_BIT_DMA)
		host->flags &= ~SDHCI_USE_64_BIT_DMA;

	/* Try 64-bit mask if hardware is capable  of it */
	if (host->flags & SDHCI_USE_64_BIT_DMA) {
		ret = FUNC1(dev, FUNC0(64));
		if (ret) {
			FUNC4("%s: Failed to set 64-bit DMA mask.\n",
				FUNC3(mmc));
			host->flags &= ~SDHCI_USE_64_BIT_DMA;
		}
	}

	/* 32-bit mask as default & fallback */
	if (ret) {
		ret = FUNC1(dev, FUNC0(32));
		if (ret)
			FUNC4("%s: Failed to set 32-bit DMA mask.\n",
				FUNC3(mmc));
	}

	return ret;
}