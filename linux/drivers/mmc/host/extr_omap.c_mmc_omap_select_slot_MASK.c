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
struct mmc_omap_slot {int saved_con; int /*<<< orphan*/  id; int /*<<< orphan*/ * mmc; struct mmc_omap_host* host; } ;
struct mmc_omap_host {struct mmc_omap_slot* current_slot; TYPE_1__* pdata; int /*<<< orphan*/  clk_timer; int /*<<< orphan*/  slot_lock; int /*<<< orphan*/ * mmc; int /*<<< orphan*/  slot_wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* switch_slot ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CON ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_omap_host*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_omap_slot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mmc_omap_slot *slot, int claimed)
{
	struct mmc_omap_host *host = slot->host;
	unsigned long flags;

	if (claimed)
		goto no_claim;
	FUNC6(&host->slot_lock, flags);
	while (host->mmc != NULL) {
		FUNC7(&host->slot_lock, flags);
		FUNC9(host->slot_wq, host->mmc == NULL);
		FUNC6(&host->slot_lock, flags);
	}
	host->mmc = slot->mmc;
	FUNC7(&host->slot_lock, flags);
no_claim:
	FUNC2(&host->clk_timer);
	if (host->current_slot != slot || !claimed)
		FUNC5(host->current_slot);

	if (host->current_slot != slot) {
		FUNC1(host, CON, slot->saved_con & 0xFC00);
		if (host->pdata->switch_slot != NULL)
			host->pdata->switch_slot(FUNC3(slot->mmc), slot->id);
		host->current_slot = slot;
	}

	if (claimed) {
		FUNC4(host, 1);

		/* Doing the dummy read here seems to work around some bug
		 * at least in OMAP24xx silicon where the command would not
		 * start after writing the CMD register. Sigh. */
		FUNC0(host, CON);

		FUNC1(host, CON, slot->saved_con);
	} else
		FUNC4(host, 0);
}