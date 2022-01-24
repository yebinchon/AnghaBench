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
struct sdhci_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  mmc; TYPE_2__* ops; } ;
struct mmc_host {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* card_event ) (struct sdhci_host*) ;} ;
struct TYPE_3__ {int (* get_cd ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  SDHCI_RESET_CMD ; 
 int /*<<< orphan*/  SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*) ; 
 int FUNC9 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC1(mmc);
	unsigned long flags;
	int present;

	/* First check if client has provided their own card event */
	if (host->ops->card_event)
		host->ops->card_event(host);

	present = mmc->ops->get_cd(mmc);

	FUNC6(&host->lock, flags);

	/* Check sdhci_has_requests() first in case we are runtime suspended */
	if (FUNC5(host) && !present) {
		FUNC2("%s: Card removed during transfer!\n",
			FUNC0(host->mmc));
		FUNC2("%s: Resetting controller.\n",
			FUNC0(host->mmc));

		FUNC3(host, SDHCI_RESET_CMD);
		FUNC3(host, SDHCI_RESET_DATA);

		FUNC4(host, -ENOMEDIUM);
	}

	FUNC7(&host->lock, flags);
}