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
struct sdhci_host {int flags; int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_CARD_PRESENT ; 
 int SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 int FUNC0 (struct mmc_host*) ; 
 struct sdhci_host* FUNC1 (struct mmc_host*) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc)
{
	int gpio_cd = FUNC0(mmc);
	struct sdhci_host *host = FUNC1(mmc);
	unsigned long flags;
	int ret = 0;

	if (!gpio_cd)
		return 0;

	FUNC3(&host->lock, flags);

	if (host->flags & SDHCI_DEVICE_DEAD)
		goto out;

	ret = !!(FUNC2(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT);
out:
	FUNC4(&host->lock, flags);

	return ret;
}