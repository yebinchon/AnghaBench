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
struct mmc_omap_slot {int /*<<< orphan*/ * mmc; int /*<<< orphan*/ * mrq; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int nr_slots; int /*<<< orphan*/  slot_lock; int /*<<< orphan*/  slot_wq; int /*<<< orphan*/ * mmc; int /*<<< orphan*/  slot_release_work; int /*<<< orphan*/  mmc_omap_wq; struct mmc_omap_slot* next_slot; struct mmc_omap_slot* current_slot; struct mmc_omap_slot** slots; int /*<<< orphan*/  clk_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_omap_slot*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mmc_omap_slot *slot, int clk_enabled)
{
	struct mmc_omap_host *host = slot->host;
	unsigned long flags;
	int i;

	FUNC0(slot == NULL || host->mmc == NULL);

	if (clk_enabled)
		/* Keeps clock running for at least 8 cycles on valid freq */
		FUNC4(&host->clk_timer, jiffies  + HZ/10);
	else {
		FUNC1(&host->clk_timer);
		FUNC3(slot);
		FUNC2(host, 0);
	}

	FUNC6(&host->slot_lock, flags);
	/* Check for any pending requests */
	for (i = 0; i < host->nr_slots; i++) {
		struct mmc_omap_slot *new_slot;

		if (host->slots[i] == NULL || host->slots[i]->mrq == NULL)
			continue;

		FUNC0(host->next_slot != NULL);
		new_slot = host->slots[i];
		/* The current slot should not have a request in queue */
		FUNC0(new_slot == host->current_slot);

		host->next_slot = new_slot;
		host->mmc = new_slot->mmc;
		FUNC7(&host->slot_lock, flags);
		FUNC5(host->mmc_omap_wq, &host->slot_release_work);
		return;
	}

	host->mmc = NULL;
	FUNC8(&host->slot_wq);
	FUNC7(&host->slot_lock, flags);
}