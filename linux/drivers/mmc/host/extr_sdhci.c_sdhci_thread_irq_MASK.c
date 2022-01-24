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
typedef  int u32 ;
struct sdhci_host {int thread_isr; struct mmc_host* mmc; int /*<<< orphan*/  lock; } ;
struct mmc_host {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* card_event ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SDHCI_INT_CARD_INSERT ; 
 int SDHCI_INT_CARD_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sdhci_host *host = dev_id;
	unsigned long flags;
	u32 isr;

	while (!FUNC2(host))
		;

	FUNC3(&host->lock, flags);
	isr = host->thread_isr;
	host->thread_isr = 0;
	FUNC4(&host->lock, flags);

	if (isr & (SDHCI_INT_CARD_INSERT | SDHCI_INT_CARD_REMOVE)) {
		struct mmc_host *mmc = host->mmc;

		mmc->ops->card_event(mmc);
		FUNC0(mmc, FUNC1(200));
	}

	return IRQ_HANDLED;
}