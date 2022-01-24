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
struct sdhci_host {int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC0(mmc);
	unsigned long flags;

	FUNC2(&host->lock, flags);
	FUNC1(host, true);
	FUNC3(&host->lock, flags);
}