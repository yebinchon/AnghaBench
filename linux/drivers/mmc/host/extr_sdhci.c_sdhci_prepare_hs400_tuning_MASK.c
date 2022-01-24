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
struct sdhci_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct mmc_ios {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_HS400_TUNING ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC0(mmc);
	unsigned long flags;

	FUNC1(&host->lock, flags);
	host->flags |= SDHCI_HS400_TUNING;
	FUNC2(&host->lock, flags);

	return 0;
}