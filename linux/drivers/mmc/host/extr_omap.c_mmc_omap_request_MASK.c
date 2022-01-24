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
struct mmc_request {int dummy; } ;
struct mmc_omap_slot {struct mmc_request* mrq; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int /*<<< orphan*/  slot_lock; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_slot*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_omap_host*,struct mmc_request*) ; 
 struct mmc_omap_slot* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_request *req)
{
	struct mmc_omap_slot *slot = FUNC3(mmc);
	struct mmc_omap_host *host = slot->host;
	unsigned long flags;

	FUNC4(&host->slot_lock, flags);
	if (host->mmc != NULL) {
		FUNC0(slot->mrq != NULL);
		slot->mrq = req;
		FUNC5(&host->slot_lock, flags);
		return;
	} else
		host->mmc = mmc;
	FUNC5(&host->slot_lock, flags);
	FUNC1(slot, 1);
	FUNC2(host, req);
}